/*
 * 001LEDToggle.c
 *
 *  Created on: 23 mar. 2023
 *      Author: jesus
 */

#include "stm32f4xx.h"

void delay(void){

	for(uint32_t i = 0 ; i < 500000 ; i++);

}

int main(void){

	GPIO_Handle_t led;

	led.pGPIOx = GPIOD;

	led.GPIO_PinConfig.GPIO_PinMode = GPIO_MODE_OUT;
	led.GPIO_PinConfig.GPIO_PinNumber = GPIO_PIN_12;
	led.GPIO_PinConfig.GPIO_PinSpeed = GPIO_SPEED_FAST;
	led.GPIO_PinConfig.GPIO_PinPuPdControl = GPIO_NO_PUPD;
	led.GPIO_PinConfig.GPIO_PinOPType = GPIO_OP_TYPE_PP;

	GPIO_PeriClockControl(GPIOD,ENABLE);

	GPIO_Init(&led);

	while(1){

		GPIO_ToggleOutputPin(GPIOD, GPIO_PIN_12);
		delay();
	}


	return 0;
}
