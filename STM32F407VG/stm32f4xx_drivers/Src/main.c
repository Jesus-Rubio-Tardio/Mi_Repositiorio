/*
 * main.c
 *
 *  Created on: 28 mar. 2023
 *      Author: jesus
 */

#include "stm32f4xx.h"

int main(void){



}

void EXTI0_IRQHandler(void){


	//handle interrupt
	GPIO_IRQHandling(0);

}
