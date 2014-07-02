/*
 * status.c
 *
 *  Created on: 21/10/2012
 *      Author: corsi
 */

#include "status.h"
#include "display.h"
#include "I2C.h"

void display_R_simb(u8 mode);

u8 mask_status_selecionado;
u8 status_selecionado_gravando;
unsigned char status_gravando;
u8 cont_seconds;

/*
 * Atualiza segunda linha com informações das atividades
 * Sendo realizadas pelo usuario
 */
/////////////////////////////////////////////////////////////////////////////////////
void display_Sono(u8 line, u8 update)
{
	mask_status_selecionado = 0x01;

	// Atualzia R simbolo
	if(status_selecionado_gravando == 0x01)
	{
		//status_gravando = 1;
		display_R_simb(SEG_ON);

	}
	else
	{
		//status_gravando = 0;
		display_R_simb(SEG_OFF);
	}

    if (update == DISPLAY_LINE_UPDATE_FULL)
    {
        display_chars(LCD_SEG_L2_4_0, (u8 *) "SONO ", SEG_ON);
    }
}
//////////////////////////////////////////////////////////////////////////////
void display_Lazer(u8 line, u8 update)
{
	mask_status_selecionado = 0x02;

	// Atualzia R simbolo
	if(status_selecionado_gravando == 0x02)
	{
		//status_gravando = 1;
		display_R_simb(SEG_ON);

	}
	else
	{
		//status_gravando = 0;
		display_R_simb(SEG_OFF);
	}


    if (update == DISPLAY_LINE_UPDATE_FULL)
    {
        display_chars(LCD_SEG_L2_4_0, (u8 *) "LAZER", SEG_ON);
    }
}
////////////////////////////////////////////////////////////////////////////
void display_Trabalho(u8 line, u8 update)
{
	mask_status_selecionado = 0x03;

	// Atualzia R simbolo
	if(status_selecionado_gravando == 0x03)
	{
		//status_gravando = 1;
		display_R_simb(SEG_ON);

	}
	else
	{
		//status_gravando = 0;
		display_R_simb(SEG_OFF);
	}

    if (update == DISPLAY_LINE_UPDATE_FULL)
    {
        display_chars(LCD_SEG_L2_4_0, (u8 *) "TRABH", SEG_ON);
    }
}
///////////////////////////////////////////////////////////////////////////////
void display_Casa(u8 line, u8 update)
{
	mask_status_selecionado = 0x04;

	// Atualzia R simbolo
	if(status_selecionado_gravando == 0x04)
	{
		//status_gravando = 1;
		display_R_simb(SEG_ON);

	}
	else
	{
		//status_gravando = 0;
		display_R_simb(SEG_OFF);
	}

    if (update == DISPLAY_LINE_UPDATE_FULL)
    {
        display_chars(LCD_SEG_L2_4_0, (u8 *) "CASA ", SEG_ON);
    }
}
/////////////////////////////////////////////////////////////////////////////////////
void display_Esporte(u8 line, u8 update)
{
	mask_status_selecionado = 0x05;

	// Atualzia R simbolo
	if(status_selecionado_gravando == 0x05)
	{
		//status_gravando = 1;
		display_R_simb(SEG_ON);

	}
	else
	{
		//status_gravando = 0;
		display_R_simb(SEG_OFF);
	}

    if (update == DISPLAY_LINE_UPDATE_FULL)
    {
        display_chars(LCD_SEG_L2_4_0, (u8 *) "ESPOR", SEG_ON);
    }
}
///////////////////////////////////////////////////////////////////////////////
void display_Smart(u8 line, u8 update)
{
	u8 check = 0;
	mask_status_selecionado = 0x06;

	// Atualzia R simbolo
	if(status_selecionado_gravando == 0x06)
	{
		//status_gravando = 1;
		display_R_simb(SEG_ON);

	}
	else
	{
		//status_gravando = 0;
		display_R_simb(SEG_OFF);
	}

    if (update == DISPLAY_LINE_UPDATE_FULL)
    {
        display_chars(LCD_SEG_L2_4_0, (u8 *) "SMART ", SEG_ON);

        if (cont_seconds == 2){		//espera dar 2 segundos ai troca de tela
        	display_chars(LCD_SEG_L2_4_0, (u8 *) "001", SEG_ON);		//mostra o codigo do relogio

        	 // check = i2c_read_register(0x04 << 1, I2C_8BIT_ACCESS);		//checa se esta concetado ao roteador
        	 // 100msec delay to guarantee stable operation
        	 // Timer0_A4_Delay(CONV_MS_TO_TICKS(100));

        	if (check == 1)		//checa se esta conectado ou desconectado
        	display_chars(LCD_SEG_L1_3_0, (u8 *) "CONEC", SEG_ON);
        	else {
        		display_chars(LCD_SEG_L1_3_0, (u8 *) "DESCT", SEG_ON);
        	}
        }
    cont_seconds = 0;
   }
}
/////////////////////////////////////////////////////////////////////////////////////////
void display_Fora(u8 line, u8 update)
{
	mask_status_selecionado = 0x07;

	// Atualiza R simbolo
	if(status_selecionado_gravando == 0x07)
	{
		//status_gravando = 1;
		display_R_simb(SEG_ON);

	}
	else
	{
		//status_gravando = 0;
		display_R_simb(SEG_OFF);
	}

    if (update == DISPLAY_LINE_UPDATE_FULL)
    {
        display_chars(LCD_SEG_L2_4_0, (u8 *) "FORA ", SEG_ON);
    }
}
/////////////////////////////////////////////////////////////////////////////////////////////

// Plota o simbolo R para dizer que o modo selecionado esta
// em gravaçao
void display_R_simb(u8 mode)
{
	if (mode == SEG_ON)
		display_symbol(LCD_REC_DISPLAY, SEG_ON);
	else
		display_symbol(LCD_REC_DISPLAY, SEG_OFF);
}
