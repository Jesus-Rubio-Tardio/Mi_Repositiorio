/*
 * 002_LED_BUTTON.c
 *
 *  Created on: 27 mar. 2023
 *      Author: jesus
 */

#include "stm32f4xx.h"
#define HIGH 1
#define BTN_PRESSED HIGH

void delay(void){

	for(uint32_t i = 0 ; i < 500000/2 ; i++);

}

int main(void){

	GPIO_Handle_t led, button;

	led.pGPIOx = GPIOD;

	led.GPIO_PinConfig.GPIO_PinMode = GPIO_MODE_OUT;
	led.GPIO_PinConfig.GPIO_PinNumber = GPIO_PIN_12;
	led.GPIO_PinConfig.GPIO_PinSpeed = GPIO_SPEED_FAST;
	led.GPIO_PinConfig.GPIO_PinPuPdControl = GPIO_NO_PUPD;
	led.GPIO_PinConfig.GPIO_PinOPType = GPIO_OP_TYPE_PP;

	GPIO_PeriClockControl(GPIOD,ENABLE);

	GPIO_Init(&led);

	button.pGPIOx = GPIOA;

	button.GPIO_PinConfig.GPIO_PinMode = GPIO_MODE_IN;
	button.GPIO_PinConfig.GPIO_PinNumber = GPIO_PIN_0;
	button.GPIO_PinConfig.GPIO_PinSpeed = GPIO_SPEED_FAST;
	button.GPIO_PinConfig.GPIO_PinPuPdControl = GPIO_NO_PUPD;

	GPIO_PeriClockControl(GPIOA,ENABLE);

	GPIO_Init(&button);

	while(1){

		if(GPIO_ReadFromInputPin(GPIOA, GPIO_PIN_0) == BTN_PRESSED)

		{

			delay();

			GPIO_ToggleOutputPin(GPIOD, GPIO_PIN_12);

		}


	}


	return 0;
}
