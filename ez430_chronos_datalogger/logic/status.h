/*
 * status.h
 *
 *  Created on: 21/10/2012
 *      Author: corsi
 */

#ifndef STATUS_H_
#define STATUS_H_

typedef unsigned char u8;

extern void display_R_simb			(u8 mode);
extern void display_Sono			(u8 line, u8 update);
extern void display_Casa		    (u8 line, u8 update);
//extern void display_cafe			(u8 line, u8 update);
//extern void display_almoco		(u8 line, u8 update);
//extern void display_janta		    (u8 line, u8 update);
extern void display_Smart	        (u8 line, u8 update);
extern void display_Trabalho		(u8 line, u8 update);
extern void display_Lazer		    (u8 line, u8 update);
extern void display_Esporte		    (u8 line, u8 update);
//extern void display_descanso		(u8 line, u8 update);
//extern void display_banho		    (u8 line, u8 update);
extern void display_Fora			(u8 line, u8 update);

#define LCD_REC_DISPLAY 21

// Mascara dos botoes
extern u8 mask_status_selecionado;
extern u8 status_selecionado_gravando;
//extern unsigned char status_gravando;



#endif /* STATUS_H_ */
