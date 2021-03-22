/*****************************************************************************/
/*  File  : led.c                                                            */
/*                                                                           */
/*  DATE:           Author:         Description:                             */
/*  -----------     -------------   ---------------------------------------- */
/*  dd-mmm-2019     LJ              Initial version                          */
/*                                                                           */
/*****************************************************************************/
#ifndef	_LED_C_
#define	_LED_C_
/*===========================================================================*/
/* Include Header Files                                                      */
/*===========================================================================*/
#include <sn8p2711a.h>
#include "led.h"
/*===========================================================================*/
/* Global Variable Definition                                                */
/*===========================================================================*/

/*===========================================================================*/
/* Local Macro Definition                                                    */
/*===========================================================================*/
#define LED_GREEN			(0)
#define LED_YELLOW			(1)
#define LED_RED				(2)
#define LED_RED_BLINK		(3)
#define LED_TYPE_NUM		(4)

#define THRESHOLD_H			(0)
#define THRESHOLD_L			(1)
#define THRESHOLD_NUM		(2)
/*===========================================================================*/
/* Local Type Definition                                                     */
/*===========================================================================*/

/*===========================================================================*/
/* Local Variable Definition                                                 */
/*===========================================================================*/

static unsigned char led_status;
static bit	led_init;

static long int LedChangeBufSetting[LED_TYPE_NUM][THRESHOLD_NUM] = {
	 /* upper threshold */ /* lower threshold */
	{		4095,				2559}, /* LED_GREEN(12v~7.5v) */
	{		2627,				2508}, /* LED_YELLOW(7.7~7.35v) */
	{		2576,				2457}, /* LED_RED(7.55~7.2v) */
	{		2525,				0}     /* LED_RED_BLINK(7.4v~0v) */
};

/*===========================================================================*/
/* Local Function Prototype Declaration                                      */
/*===========================================================================*/
static void setLED(unsigned char led_type);
/*===========================================================================*/
/* Function Definition                                                       */
/*===========================================================================*/

/*===========================================================================*/
/* initLED                                                                   */
/*   arg : void                                                              */
/*   ret : void                                                              */
/*===========================================================================*/
void initLED(void)
{
	led_status = LED_GREEN;
	led_init = 1;

	return;
}

/*===========================================================================*/
/* controlLED                                                                */
/*   arg : void                                                              */
/*   ret : void                                                              */
/*===========================================================================*/
void controlLED(long int ad_val)
{
	unsigned char led_set;

	/* DC_IN */
	if (ad_val == 4096) {
		setLED(LED_GREEN);
		led_init = 1;
	} else {
		/* According to current AD value set LED status when system reset */
		if (led_init == 1) {
			if(ad_val > 0)
			{
				led_init = 0;
				if (ad_val >= LedChangeBufSetting[LED_GREEN][THRESHOLD_L]){
					led_set = LED_GREEN;
				} else if ((ad_val >= LedChangeBufSetting[LED_YELLOW][THRESHOLD_L]) &&
						(ad_val < LedChangeBufSetting[LED_GREEN][THRESHOLD_L])) {
					led_set = LED_YELLOW;
				} else if ((ad_val >= LedChangeBufSetting[LED_RED][THRESHOLD_L]) &&
						(ad_val < LedChangeBufSetting[LED_YELLOW][THRESHOLD_L])) {
					led_set = LED_RED;
				} else {
					led_set = LED_RED_BLINK;
				}
			}else{
				//do not control led (default off)
				led_set = LED_TYPE_NUM;
			}
		} else {
			/* According to the AD value control led */
			if (ad_val < LedChangeBufSetting[led_status][THRESHOLD_L]){
				led_set = led_status + 1;
			} else if (ad_val >= LedChangeBufSetting[led_status][THRESHOLD_H]) {
				led_set = led_status - 1; 
			} else {
				led_set = led_status;
			}
		}
		setLED(led_set);
	}

	return;
}

/*===========================================================================*/
/* setLED                                                                    */
/*   arg : led_type type of led                                              */
/*   ret : void                                                              */
/*===========================================================================*/
static void setLED(unsigned char led_type)
{
	switch (led_type) {
		case LED_GREEN:
			FP03 = 0; //red = off
			FP44 = 1; //green = on
			FP53 = 0; //yellow = off
			break;
		case LED_YELLOW:
			FP03 = 0; //red = off
			FP44 = 0; //green = off
			FP53 = 1; //yellow = on
			break;
		case LED_RED:
			FP03 = 1; //red = on
			FP44 = 0; //green = off
			FP53 = 0; //yellow = off
			break;
		case LED_RED_BLINK:
			FP03 = ~FP03; //red = blink
			FP44 = 0;     //green = off
			FP53 = 0;     //yellow = off
			break;
		default:
			break;
	}
	
	led_status = led_type;
	
	return;
}

#endif
/*
** end of led.c
*/