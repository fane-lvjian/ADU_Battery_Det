/*****************************************************************************/
/*  File  : ad.h                                                             */
/*                                                                           */
/*  DATE:           Author:         Description:                             */
/*  -----------     -------------   ---------------------------------------- */
/*  dd-mmm-2018     LJ            Initial version                            */
/*                                                                           */
/*****************************************************************************/
#ifndef	_AD_H_
#define	_AD_H_
/*===========================================================================*/
/* Include Header Files                                                      */
/*===========================================================================*/

/*===========================================================================*/
/* Global Macro Definition                                                   */
/*===========================================================================*/

/*===========================================================================*/
/* Global Type Definition                                                    */
/*===========================================================================*/

/*===========================================================================*/
/* Global Variable Declaration                                               */
/*===========================================================================*/

/*===========================================================================*/
/* Global Function Prototype Declaration                                     */
/*===========================================================================*/
extern void				initAD(void);
extern void				controlAD(void);
extern long int			getBAT_AD(void);
extern void				clearAD(void);


#endif	/*_AD_H_*/
/*
** end of ad.h
*/