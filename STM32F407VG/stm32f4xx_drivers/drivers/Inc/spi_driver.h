/*
 * spi_driver.h
 *
 *  Created on: 29 mar. 2023
 *      Author: jesus
 */

#ifndef INC_SPI_DRIVER_H_
#define INC_SPI_DRIVER_H_

#include <stm32f4xx.h>

//Struct for SPI

typedef struct{

	uint8_t SPI_DeviceMode;
	uint8_t SPI_BusConfig;
	uint8_t SPI_SclkSpeed;
	uint8_t SPI_DFF;
	uint8_t SPI_CPOL;
	uint8_t SPI_CPHA;
	uint8_t SPI_SSM;

}SPI_Config_t;


typedef struct {

	SPI_RegDef_t *pSPIx;       //This holds the base address of the gpio port to which the pin belongs in this case pin C
	SPI_Config_t SPIConfig;
	uint8_t *pTxBuffer;
	uint8_t *pRxBuffer;
	uint32_t TxLen;
	uint32_t RxLen;
	uint8_t TxState;
	uint8_t RxState;

}SPI_Handle_t;

#define SPI_DeviceMaster                    1
#define SPI_DeviceSlave                     0

#define SPI_Bus_Config_FD                   1
#define SPI_Bus_Config_HD                   2
#define SPI_Bus_Config_Simplex_RxONLY       3

#define SPI_SclkSpeed_DIV2                  0
#define SPI_SclkSpeed_DIV4                  1
#define SPI_SclkSpeed_DIV8                  2
#define SPI_SclkSpeed_DIV16                 3
#define SPI_SclkSpeed_DIV32                 4
#define SPI_SclkSpeed_DIV64                 5
#define SPI_SclkSpeed_DIV128                6
#define SPI_SclkSpeed_DIV256                7

#define SPI_DFF_8BITS                       0
#define SPI_DFF_16BITS                      1

#define SPI_CPOL_HIGH                       1
#define SPI_CPOL_LOW                        0

#define SPI_CPHA_HIGH                       1
#define SPI_CPHA_LOW                        0

#define SPI_SSM_EN                          1
#define SPI_SSM_DI                          0


#define SPI_TXE_FLAG                        (1 << SPI_SR_TXE)
#define SPI_RXNE_FLAG                       (1 << SPI_SR_RXNE)
#define SPI_BUSY_FLAG                       (1 << SPI_SR_BSY)

#define SPI_READY                           0
#define SPI_BUSY_IN_RX                      1
#define SPI_BUSY_IN_TX                      2

#define SPI_EVENT_TX_CMPLT                  1
#define SPI_EVENT_RX_CMPLT                  2
#define SPI_EVENT_OVR_ERR                   3
#define SPI_EVENT_CRC_ERR                   4

// Init and De-init

void SPI_Init(SPI_Handle_t *pSPIHandle);
void SPI_DeInit(SPI_RegDef_t *pSPIx);

// Clock setup

void SPI_PeriClockControl(SPI_RegDef_t *pSPIx, uint8_t ENorDI);

// Data Send and Receive

void SPI_SendData(SPI_RegDef_t *pSPIx, uint8_t *pTxBuffer, uint32_t Len);
void SPI_ReceiveData(SPI_RegDef_t *pSPIx, uint8_t *pRxBuffer, uint32_t Len);

uint8_t SPI_SendDataIT(SPI_Handle_t *pSPIHandle, uint8_t *pTxBuffer, uint32_t Len);
uint8_t SPI_ReceiveDataIT(SPI_Handle_t *pSPIHandle, uint8_t *pRxBuffer, uint32_t Len);

// Interrupts

void SPI_IRQInterruptConfig(uint8_t IRQNumber, uint8_t ENorDI);
void SPI_IRQHandling(SPI_Handle_t *pHandle);
void SPI_IRQPrioritytConfig(uint8_t IRQNumber, uint8_t IRQPriority);

//Other peripheral control APIs

void SPI_PeripheralControl(SPI_RegDef_t *pSPIx, uint8_t ENorDI);
void SPI_SSIConfig(SPI_RegDef_t *pSPIx, uint8_t ENorDI);
void  SPI_SSOEConfig(SPI_RegDef_t *pSPIx, uint8_t ENorDI);

//Some helper functions

void SPI_CloseTransmisson(SPI_Handle_t *pSPIHandle);
void SPI_CloseReception(SPI_Handle_t *pSPIHandle);
void SPI_ClearOVRFlag(SPI_RegDef_t *pSPIx);

void SPI_ApplicationEventCallback(SPI_Handle_t *pSPIHandle,uint8_t AppEv);


#endif /* INC_SPI_DRIVER_H_ */
