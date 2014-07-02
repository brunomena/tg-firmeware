/*
 * I2C.h
 *
 *  Created on: 28/05/2014
 *      Author: Bruno
 */

#ifndef I2C_H_
#define I2C_H_

// *************************************************************************************************
// Include section

// *************************************************************************************************
// Prototypes section
extern void i2c_init(void);
extern u8 i2c_sda(u8 ack);
extern void i2c_delay(void);
extern void i2c_write(u8 data);
extern u8 i2c_read(u8 ack);
extern u8 i2c_write_register(u8 device, u8 data);
extern u16 i2c_read_register(u8 device, u8 mode);

// *************************************************************************************************
// Defines section

// Port and pin resource for I2C interface to pressure sensor
// SCL=PJ.3, SDA=PJ.2, EOC=P2.6
#define I2C_IN            (PJIN)
#define I2C_OUT           (PJOUT)
#define I2C_DIR           (PJDIR)
#define I2C_REN           (PJREN)
#define SCL_PIN           (BIT3)
#define SDA_PIN           (BIT2)

// Port, pin and interrupt resource for interrupt from acceleration sensor, EOC=P2.6
#define INT_IN            (P2IN)
#define INT_OUT           (P2OUT)
#define INT_DIR           (P2DIR)
#define INT_IE            (P2IE)
#define INT_IES           (P2IES)
#define INT_IFG           (P2IFG)
#define INT_PIN           (BIT6)

// I2C defines
#define I2C_WRITE         (0u)
#define I2C_READ          (1u)

#define I2C_SEND_START    (0u)
#define I2C_SEND_RESTART  (1u)
#define I2C_SEND_STOP     (2u)
#define I2C_CHECK_ACK     (3u)

#define I2C_8BIT_ACCESS   (0u)
#define I2C_16BIT_ACCESS  (1u)

#define I2C_SCL_HI        { I2C_OUT |=  SCL_PIN; }
#define I2C_SCL_LO        { I2C_OUT &= ~SCL_PIN; }
#define I2C_SDA_HI        { I2C_OUT |=  SDA_PIN; }
#define I2C_SDA_LO        { I2C_OUT &= ~SDA_PIN; }
#define I2C_SDA_IN        { I2C_OUT |=  SDA_PIN; I2C_DIR &= ~SDA_PIN; }
#define I2C_SDA_OUT       { I2C_DIR |=  SDA_PIN; }

// *************************************************************************************************
// Global Variable section

// *************************************************************************************************
// Extern section

#endif /* I2C_H_ */
