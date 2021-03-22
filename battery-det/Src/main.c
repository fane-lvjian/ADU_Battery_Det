/*****************************************************************************/
/*  File  : Main.c                                                           */
/*                                                                           */
/*  DATE:           Author:         Description:                             */
/*  -----------     -------------   ---------------------------------------- */
/*  dd-mmm-2019     LJ              Initial version                          */
/*                                                                           */
/*****************************************************************************/
#ifndef	_MAIN_C_
#define	_MAIN_C_
/*===========================================================================*/
/* Include Header Files                                                      */
/*===========================================================================*/
#include <sn8p2711a.h>
#include "ad.h"
#include "led.h"
/*===========================================================================*/
/* Global Variable Definition                                                */
/*===========================================================================*/

/*===========================================================================*/
/* Local Macro Definition                                                    */
/*===========================================================================*/
typedef enum {
	DC_IN,		/* dc in */
	BAT_IN,		/* battery in */
} DC_TYPE;

#define DC_DEBOUNCING_TIMES		8
/*===========================================================================*/
/* Local Type Definition                                                     */
///*===========================================================================*/

/*===========================================================================*/
/* Local Variable Definition                                                 */
/*===========================================================================*/
unsigned char fcout1;
unsigned char fcout2;
unsigned char dc_in_cnt;
unsigned char bat_in_cnt;

DC_TYPE dc_type = BAT_IN;
/*===========================================================================*/
/* Local Function Prototype Declaration                                      */
/*===========================================================================*/
void initTimer(void);
void init_IO(void);
void dc_DET(void);
/*===========================================================================*/
/* Function Definition                                                       */
/*===========================================================================*/

/*===========================================================================*/
/* timer interrupt                                                           */
/*   arg : void                                                              */
/*   ret : void                                                              */
/*===========================================================================*/
void __interrupt[0x8] isr(void)
{
	if (FTC0IRQ == 1){
		FTC0IRQ = 0;
		fcout1++;
	}
}

/*===========================================================================*/
/* main                                                                      */
/*   arg : void                                                              */
/*   ret : void                                                              */
/*===========================================================================*/
void main (void)
{
 	long int temp_bat = 0x0000;

	/* timer initialize */
	initTimer();
	/* IO initialize */
	init_IO();
	/* AD initialize */
	initAD();
	/* LED initialize */
	initLED();

	while (1) {
		/* clear watchdog timer */
		_ClearWatchDogTimer();

		/* 60ms */
		if (fcout1 == 60) {
			fcout1 = 0;
			fcout2++;
			/* AD sampling every 60ms */
			controlAD();
			/* dc detect every 60ms */
			dc_DET();
		}

		/* Control once every 240ms interval */
		if (fcout2 >= 4) {
			fcout2 = 0;
			/* Set LED = GREEN when DC_IN detect */
			if (dc_type == DC_IN){
				controlLED(4096);
				clearAD();
			} else { //According to AD value set LED When BAT_IN detect
				temp_bat = getBAT_AD();
				controlLED(temp_bat);
			}
		}
	}
}

/*===========================================================================*/
/* initTimer                                                                 */
/*   arg : void                                                              */
/*   ret : void                                                              */
/*===========================================================================*/
void initTimer(void)
{            
	//INTRQ = 0x00;
	//INTEN = 0x00;

	/* Reset TC0 */
	//TC0M = 0x00;
    /* Set the TC0 Rate and auto reload features */
	TC0M = 0x34; //Fcpu/32
	/* Set TC0C and TC0R to get the interval of TC0. */
	TC0C = 0x7D; //1ms
	TC0R = 0x7D; //1ms
	/* Clear TC0IRQ */
	FTC0IRQ = 0;
	/* Select TC0 Fcpu internal clock source */
	FTC0X8 = 0; //Fcpu
	/* Set TC0 auto reload function */
	FTC0IEN = 1;
	INTRQ = 0x00;
	INTEN = 0x20;
	FTC0ENB = 1;			/*only use TC0*/
	FGIE = 1;				/*enable interrupt*/

	return;	
}
 
/*===========================================================================*/
/* init_IO                                                                   */
/*   arg : void                                                              */
/*   ret : void                                                              */
/*===========================================================================*/
void init_IO(void)
{
	/* P0.2 set input */
	FP02M = 0;
	/* P0.3 set output */
	FP03M = 1;
	FP03 = 0;
	/* P4.4 set output */
	FP44M = 1;
	FP44 = 0;
	/* P5.3 set output */
	FP53M = 1;
	FP53 = 0;

	return;
}
/*===========================================================================*/
/* dc_DET                                                                    */
/*   arg : void                                                              */
/*   ret : void                                                              */
/*===========================================================================*/
void dc_DET(void)
{
	/* DC_IN when low level detected */
	if (FP02 == 0){
		bat_in_cnt = 0;
		dc_in_cnt++;
		if (dc_in_cnt == DC_DEBOUNCING_TIMES){
			dc_in_cnt = 0;
			dc_type = DC_IN;
		}
	} else {//BAT IN when high level detected
		dc_in_cnt = 0;
		bat_in_cnt++;
		if (bat_in_cnt == DC_DEBOUNCING_TIMES){
			bat_in_cnt = 0;
			dc_type = BAT_IN;
		}
	}	

	return;
}

#endif
/*
** end of Main.c
*/