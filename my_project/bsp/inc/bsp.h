/*
 * bsp.h
 *
 *  Created on: Jun 9, 2025
 *      Author: Paul
 */

#ifndef INC_BSP_H_
#define INC_BSP_H_

#include "stm32f0xx.h"

/*
 * LED driver functions
 */

void	   BSP_LED_Init    (void);
void	   BSP_LED_On      (void);
void	   BSP_LED_Off     (void);
void	   BSP_LED_Toggle  (void);

/*
 * Push-Button driver functions
 */

void       BSP_PB_Init		(void);
uint8_t    BSP_PB_GetState	(void);

#endif /* INC_BSP_H_ */
