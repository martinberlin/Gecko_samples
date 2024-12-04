/*
 * arduino.c
 *
 *  Created on: Nov 26, 2024
 *      Author: laurencebank
 */
#include "arduino.h"
static volatile bool transfer_complete = true;
//typedef void (DMA_CALLBACK)(void);
//static DMA_CALLBACK *pCallback;
uint8_t u8SDA_Pin, u8SCL_Pin;
int iDelay = 1;
//
// Arduino-like API defines and function wrappers for Silicon Labs MCUs
// written by Larry Bank
//
void delay(int i)
{
  sl_sleeptimer_delay_millisecond(i);
}
void delayMicroseconds(int i)
{
  sl_udelay_wait(i);
}
uint8_t SDA_READ(void)
{
  return digitalRead(u8SDA_Pin);
}
void SDA_HIGH(void)
{
  pinMode(u8SDA_Pin, INPUT);
}
void SDA_LOW(void)
{
  pinMode(u8SDA_Pin, OUTPUT);
  digitalWrite(u8SDA_Pin, 0);
}
void SCL_HIGH(void)
{
  pinMode(u8SCL_Pin, INPUT);
}
void SCL_LOW(void)
{
  pinMode(u8SCL_Pin, OUTPUT);
  digitalWrite(u8SCL_Pin, 0);
}
void I2CSetSpeed(int iSpeed)
{
  if (iSpeed >= 400000) iDelay = 1;
  else if (iSpeed >= 100000) iDelay = 10;
  else iDelay = 20;
}
void I2CInit(uint8_t u8SDA, uint8_t u8SCL, int iSpeed)
{
  u8SDA_Pin = u8SDA;
  u8SCL_Pin = u8SCL;
  if (iSpeed >= 400000) iDelay = 1;
  else if (iSpeed >= 100000) iDelay = 10;
  else iDelay = 20;
} /* I2CInit() */
//
// Transmit a byte and read the ack bit
// if we get a NACK (negative acknowledge) return 0
// otherwise return 1 for success
//
int i2cByteOut(uint8_t b)
{
uint8_t i, ack;

for (i=0; i<8; i++)
{
//    my_sleep_us(iDelay);
    if (b & 0x80)
      SDA_HIGH(); // set data line to 1
    else
      SDA_LOW(); // set data line to 0
    b <<= 1;
//    my_sleep_us(iDelay);
    SCL_HIGH(); // clock high (slave latches data)
    delayMicroseconds(iDelay);
    SCL_LOW(); // clock low
    delayMicroseconds(iDelay);
} // for i
//my_sleep_us(iDelay);
// read ack bit
SDA_HIGH(); // set data line for reading
//my_sleep_us(iDelay);
SCL_HIGH(); // clock line high
delayMicroseconds(iDelay); // DEBUG - delay/2
ack = SDA_READ();
//my_sleep_us(iDelay);
SCL_LOW(); // clock low
delayMicroseconds(iDelay); // DEBUG - delay/2
SDA_LOW(); // data low
return (ack == 0); // a low ACK bit means success
} /* i2cByteOut() */

//
// Receive a byte and read the ack bit
// if we get a NACK (negative acknowledge) return 0
// otherwise return 1 for success
//
uint8_t i2cByteIn(uint8_t bLast)
{
uint8_t i;
uint8_t b = 0;

     SDA_HIGH(); // set data line as input
     for (i=0; i<8; i++)
     {
         delayMicroseconds(iDelay); // wait for data to settle
         SCL_HIGH(); // clock high (slave latches data)
         delayMicroseconds(iDelay);
         b <<= 1;
         if (SDA_READ() != 0) // read the data bit
           b |= 1; // set data bit
         SCL_LOW(); // clock low
     } // for i
     if (bLast)
        SDA_HIGH(); // last byte sends a NACK
     else
        SDA_LOW();
//     my_sleep_us(iDelay);
     SCL_HIGH(); // clock high
     delayMicroseconds(iDelay);
     SCL_LOW(); // clock low to send ack
     delayMicroseconds(iDelay);
//     SDA_HIGH();
     SDA_LOW(); // data low
  return b;
} /* i2cByteIn() */
//
// Send I2C STOP condition
//
void i2cEnd(void)
{
   SDA_LOW(); // data line low
   delayMicroseconds(iDelay);
   SCL_HIGH(); // clock high
   delayMicroseconds(iDelay);
   SDA_HIGH(); // data high
   delayMicroseconds(iDelay);
} /* i2cEnd() */

int i2cBegin(uint8_t addr, uint8_t bRead)
{
   int rc;
//   SCL_HIGH();
//   my_sleep_us(iDelay);
   SDA_LOW(); // data line low first
   delayMicroseconds(iDelay);
   SCL_LOW(); // then clock line low is a START signal
   addr <<= 1;
   if (bRead)
      addr++; // set read bit
   rc = i2cByteOut(addr); // send the slave address and R/W bit
   return rc;
} /* i2cBegin() */

void I2CWrite(uint8_t addr, uint8_t *pData, int iLen)
{
uint8_t b;
int rc;

   i2cBegin(addr, 0);
   rc = 1;
   while (iLen && rc == 1)
   {
      b = *pData++;
      rc = i2cByteOut(b);
      if (rc == 1) // success
      {
         iLen--;
      }
   } // for each byte
   i2cEnd();
//return (rc == 1) ? (iOldLen - iLen) : 0; // 0 indicates bad ack from sending a byte
} /* I2CWrite() */

void I2CRead(uint8_t addr, uint8_t *pData, int iLen)
{
   i2cBegin(addr, 1);
   while (iLen--)
   {
      *pData++ = i2cByteIn(iLen == 0);
   } // for each byte
   i2cEnd();
} /* I2CRead() */

//
// Read N bytes starting at a specific I2C internal register
// returns 1 for success, 0 for error
//
int I2CReadRegister(uint8_t iAddr, uint8_t u8Register, uint8_t *pData, int iLen)
{
//  int rc;

  I2CWrite(iAddr, &u8Register, 1);
  Delay_Ms(5);
  I2CRead(iAddr, pData, iLen);

return 1; // returns 1 for success, 0 for error
} /* I2CReadRegister() */

int I2CTest(uint8_t addr)
{
int response = 0;

   if (i2cBegin(addr, 0)) // try to write to the given address
   {
      response = 1;
   }
   i2cEnd();
return response;
} /* I2CTest() */

void pinMode(uint8_t u8Pin, int iMode)
{
  int iModeDef = 0;

    if (u8Pin < 0xa0 || u8Pin > 0xdf) return; // invalid pin number
    if (iMode == OUTPUT) iModeDef = gpioModePushPull;
    else if (iMode == INPUT) iModeDef = gpioModeInput;

    switch (u8Pin & 0xf0) {
    case 0xa0:
      GPIO_PinModeSet(gpioPortA, u8Pin & 0xf, iModeDef, 0);
      break;
    case 0xb0:
      GPIO_PinModeSet(gpioPortB, u8Pin & 0xf, iModeDef, 0);
      break;
    case 0xc0:
      GPIO_PinModeSet(gpioPortC, u8Pin & 0xf, iModeDef, 0);
      break;
    case 0xd0:
      GPIO_PinModeSet(gpioPortD, u8Pin & 0xf, iModeDef, 0);
      break;
    }
} /* pinMode() */

uint8_t digitalRead(uint8_t u8Pin)
{
    uint8_t u8Value = 0;
    switch (u8Pin & 0xf0) {
    case 0xa0:
      u8Value = GPIO_PinInGet(gpioPortA, u8Pin & 0xf);
      break;
    case 0xb0:
      u8Value = GPIO_PinInGet(gpioPortB, u8Pin & 0xf);
      break;
    case 0xc0:
      u8Value = GPIO_PinInGet(gpioPortC, u8Pin & 0xf);
      break;
    case 0xd0:
      u8Value = GPIO_PinInGet(gpioPortD, u8Pin & 0xf);
      break;
    }
    return u8Value;
} /* digitalRead() */

void digitalWrite(uint8_t u8Pin, uint8_t u8Value)
{
  switch (u8Pin & 0xf0) {
  case 0xa0:
    if (u8Value) {
        GPIO_PinOutSet(gpioPortA, u8Pin & 0xf);
    } else {
        GPIO_PinOutClear(gpioPortA, u8Pin & 0xf);
    }
    break;
  case 0xb0:
    if (u8Value) {
        GPIO_PinOutSet(gpioPortB, u8Pin & 0xf);
    } else {
        GPIO_PinOutClear(gpioPortB, u8Pin & 0xf);
    }
    break;
  case 0xc0:
    if (u8Value) {
        GPIO_PinOutSet(gpioPortC, u8Pin & 0xf);
    } else {
        GPIO_PinOutClear(gpioPortC, u8Pin & 0xf);
    }
    break;
  case 0xd0:
    if (u8Value) {
        GPIO_PinOutSet(gpioPortD, u8Pin & 0xf);
    } else {
        GPIO_PinOutClear(gpioPortD, u8Pin & 0xf);
    }
    break;
  }
} /* digitalWrite() */

// Callback fired when data is transmitted
/*void spi_dma_callback(SPIDRV_HandleData_t *handle,
                       Ecode_t transfer_status,
                       int items_transferred)
{
  (void)&handle;
  (void)items_transferred;

  // Post semaphore to signal to application
  // task that transfer is successful
  if (transfer_status == ECODE_EMDRV_SPIDRV_OK) {
    transfer_complete = true;
    pCallback();
  }
}

// DMA write
void SPI_write(uint8_t *pData, int iLen, void *pfnCallback)
{
  Ecode_t ecode;

//  while (!transfer_complete) {}; // wait for last operation to complete
//  pCallback = (DMA_CALLBACK *)pfnCallback;
//  transfer_complete = false;
//  ecode = SPIDRV_MTransmit(sl_spidrv_exp_handle, pData, iLen, spi_dma_callback);
  while (iLen) {
      int j = iLen;
      if (j > DMADRV_MAX_XFER_COUNT) j = DMADRV_MAX_XFER_COUNT;
      ecode = SPIDRV_MTransmitB(sl_spidrv_exp_handle, pData, j); // have to use blocking because the max DMA length is 1K
      EFM_ASSERT(ecode == ECODE_OK);
      iLen -= j;
      pData += j;
  }
}*/
/* SPI_write() */
