/*
 * arduino.c
 *
 *  Created on: Nov 26, 2024
 *      Author: laurencebank
 */
#include "arduino.h"
static volatile bool transfer_complete = true;
typedef void (DMA_CALLBACK)(void);
static DMA_CALLBACK *pCallback;
//
// Arduino-like API defines and function wrappers for Silicon Labs MCUs
// written by Larry Bank
//
void delay(int i)
{
  sl_sleeptimer_delay_millisecond(i);
}

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
}*/

// DMA write
/*void SPI_write(uint8_t *pData, int iLen, void *pfnCallback)
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
}*/ /* SPI_write() */

