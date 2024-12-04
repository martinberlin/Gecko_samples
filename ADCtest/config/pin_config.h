#ifndef PIN_CONFIG_H
#define PIN_CONFIG_H

// $[CMU]
// [CMU]$

// $[LFXO]
// [LFXO]$

// $[PRS.ASYNCH0]
// [PRS.ASYNCH0]$

// $[PRS.ASYNCH1]
// [PRS.ASYNCH1]$

// $[PRS.ASYNCH2]
// [PRS.ASYNCH2]$

// $[PRS.ASYNCH3]
// [PRS.ASYNCH3]$

// $[PRS.ASYNCH4]
// [PRS.ASYNCH4]$

// $[PRS.ASYNCH5]
// [PRS.ASYNCH5]$

// $[PRS.ASYNCH6]
// [PRS.ASYNCH6]$

// $[PRS.ASYNCH7]
// [PRS.ASYNCH7]$

// $[PRS.ASYNCH8]
// [PRS.ASYNCH8]$

// $[PRS.ASYNCH9]
// [PRS.ASYNCH9]$

// $[PRS.ASYNCH10]
// [PRS.ASYNCH10]$

// $[PRS.ASYNCH11]
// [PRS.ASYNCH11]$

// $[PRS.SYNCH0]
// [PRS.SYNCH0]$

// $[PRS.SYNCH1]
// [PRS.SYNCH1]$

// $[PRS.SYNCH2]
// [PRS.SYNCH2]$

// $[PRS.SYNCH3]
// [PRS.SYNCH3]$

// $[GPIO]
// GPIO SWV on PA03
#ifndef GPIO_SWV_PORT                           
#define GPIO_SWV_PORT                            gpioPortA
#endif
#ifndef GPIO_SWV_PIN                            
#define GPIO_SWV_PIN                             3
#endif

// [GPIO]$

// $[TIMER0]
// [TIMER0]$

// $[TIMER1]
// [TIMER1]$

// $[TIMER2]
// [TIMER2]$

// $[TIMER3]
// [TIMER3]$

// $[TIMER4]
// [TIMER4]$

// $[USART0]
// USART0 RX on PA06
#ifndef USART0_RX_PORT                          
#define USART0_RX_PORT                           gpioPortA
#endif
#ifndef USART0_RX_PIN                           
#define USART0_RX_PIN                            6
#endif

// USART0 TX on PA05
#ifndef USART0_TX_PORT                          
#define USART0_TX_PORT                           gpioPortA
#endif
#ifndef USART0_TX_PIN                           
#define USART0_TX_PIN                            5
#endif

// [USART0]$

// $[USART1]
// [USART1]$

// $[I2C1]
// I2C1 SCL on PD03
#ifndef I2C1_SCL_PORT                           
#define I2C1_SCL_PORT                            gpioPortD
#endif
#ifndef I2C1_SCL_PIN                            
#define I2C1_SCL_PIN                             3
#endif

// I2C1 SDA on PD02
#ifndef I2C1_SDA_PORT                           
#define I2C1_SDA_PORT                            gpioPortD
#endif
#ifndef I2C1_SDA_PIN                            
#define I2C1_SDA_PIN                             2
#endif

// [I2C1]$

// $[PDM]
// [PDM]$

// $[LETIMER0]
// [LETIMER0]$

// $[IADC0]
// [IADC0]$

// $[I2C0]
// [I2C0]$

// $[EUART0]
// [EUART0]$

// $[CUSTOM_PIN_NAME]
#ifndef _PORT                                   
#define _PORT                                    gpioPortA
#endif
#ifndef _PIN                                    
#define _PIN                                     0
#endif

#ifndef TX_PORT                                 
#define TX_PORT                                  gpioPortA
#endif
#ifndef TX_PIN                                  
#define TX_PIN                                   5
#endif

#ifndef RX_PORT                                 
#define RX_PORT                                  gpioPortA
#endif
#ifndef RX_PIN                                  
#define RX_PIN                                   6
#endif

#ifndef SDA_PORT                                
#define SDA_PORT                                 gpioPortD
#endif
#ifndef SDA_PIN                                 
#define SDA_PIN                                  2
#endif

#ifndef SCL_PORT                                
#define SCL_PORT                                 gpioPortD
#endif
#ifndef SCL_PIN                                 
#define SCL_PIN                                  3
#endif

// [CUSTOM_PIN_NAME]$

#endif // PIN_CONFIG_H

