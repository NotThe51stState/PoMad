/*
 * main.c
 *
 *  Created on: Jun 2, 2025
 *      Author: Paul
 */

#include "stm32f446xx.h"
int main() {
	uint32_t i;

	// Start GPIOA clock
	RCC->AHB1ENR |= RCC_AHB1ENR_GPIOAEN;
	//RCC->AHBENR |= RCC_AHBENR_GPIOAEN;

	// Configure PA5 as output
	GPIOA->MODER &= ~GPIO_MODER_MODER5_Msk;
	GPIOA->MODER |= (0x01 <<GPIO_MODER_MODER5_Pos);

	while(1) {
		// LED toggle
		GPIOA->ODR ^= GPIO_ODR_ODR_5;
		//GPIOA->ODR ^= GPIO_ODR_5;

		// Wait
		for(i=0; i<100000; i++);
	}
}
