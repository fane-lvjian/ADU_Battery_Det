/*****************************************************************************/
/*  File  : ad.c                                                             */
/*                                                                           */
/*  DATE:           Author:         Description:                             */
/*  -----------     -------------   ---------------------------------------- */
/*  dd-mmm-2019     LJ              Initial version                          */
/*                                                                           */
/*****************************************************************************/
#ifndef	_AD_C_
#define	_AD_C_
/*===========================================================================*/
/* Include Header Files                                                      */
/*===========================================================================*/
#include <sn8p2711a.h>
#include "ad.h"
/*===========================================================================*/
/* Global Variable Definition                                                */
/*===========================================================================*/

/*===========================================================================*/
/* Local Macro Definition                                                    */
/*===========================================================================*/
#define AD_SAMPLING_TIMES_SHIFT		(3)
#define	AD_SAMPLING_TIMES			(0x01 << AD_SAMPLING_TIMES_SHIFT)
/*===========================================================================*/
/* Local Type Definition                                                     */
/*===========================================================================*/

/*===========================================================================*/
/* Local Variable Definition                                                 */
/*===========================================================================*/
static long int ad_value;
static long int ad_val_sum;
static unsigned char adBattIdx;
/*===========================================================================*/
/* Local Function Prototype Declaration                                      */
/*===========================================================================*/

/*===========================================================================*/
/* Function Definition                                                       */
/*===========================================================================*/

/*===========================================================================*/
/* initAD                                                                    */
/*   arg : void                                                              */
/*   ret : void                                                              */
/*===========================================================================*/

void initAD(void)
{
	ad_value = 0x0000;
	ad_val_sum = 0x0000;
	adBattIdx = 0;	

	/* Reset ADC */
	//ADM = 0x00;
	/* Set ADC Clock Rate */
	ADR = 0x40;
	/* Set the ADC reference voltage high source */
	FEVHENB = 0;
	/* Select internal AD reference source. */
	VREFH = 0x02;
	/* Set the ADC input channel */
	P4CON = 0x08;
	FP43M = 0;
	P4UR = 0x00;
	/* Enable ADC */
	FADENB = 1;
	/* 100us wait */
	NOP(400);
	/* Select ADC input Channel(AIN3) */
	FCHS2 = 0;
	FCHS1 = 1;
	FCHS0 = 1;
	/* Enable ADC input channel */
	FGCHS = 1;

	return;
}
/*===========================================================================*/
/* controlAD                                                                 */
/*   arg : void                                                              */
/*   ret : void                                                              */
/*===========================================================================*/
void controlAD(void)
{
	long int ad_val_H = 0;
	long int ad_val = 0;
	
	/* Start ADC */
	FADS = 1;
	/* Check the ADC status flag */
	while(FEOC == 0){
		;
	}

	if (FP02 != 0) {
		ad_val_H = ADB;	          //Get AD convert result high byte
		ad_val = (ad_val_H << 4)|(ADR & 0x0f);
		
		/* Get AD value 8 times and average operation */
		ad_val_sum = ad_val_sum + ad_val;
		adBattIdx ++;
		if (adBattIdx >= AD_SAMPLING_TIMES) {
			adBattIdx = 0;
			ad_value = ad_val_sum >> AD_SAMPLING_TIMES_SHIFT;
			ad_val_sum = 0x0000;
		}
	}

	return;
}
/*===========================================================================*/
/* getBAT_AD                                                                 */
/*   arg : void                                                              */
/*   ret : value of ADC                                                      */
/*===========================================================================*/
long int getBAT_AD(void)
{
	return (ad_value);
}

/*===========================================================================*/
/* clearAD                                                                   */
/*   arg : void                                                              */
/*   ret : void                                                              */
/*===========================================================================*/
void clearAD(void)
{
	ad_value = 0x0000;
	ad_val_sum = 0x0000;
	adBattIdx = 0;
	
	return ;
}

#endif
/*
** end of ad.c
*/