/*
 * I2C.c
 *
 *  Created on: 28/05/2014
 *      Author: Bruno G. Mena
 */

//Include section

// system
#include "project.h"

// driver
#include "I2C.h"
#include "timer.h"
////////////////////////////////////////////////////////////////////////////////////////////

 	 	// *************************************************************************************************
// @fn          bmp_ps_init
// @brief       Init pressure sensor I/O
// @param       none
// @return      none
// *************************************************************************************************
void i2c_init(void)
{

    I2C_OUT |= SCL_PIN + SDA_PIN; // SCL and SDA are high by default
    I2C_DIR |= SCL_PIN + SDA_PIN; // SCL and SDA are outputs by default

    // 100msec delay to guarantee stable operation
    Timer0_A4_Delay(CONV_MS_TO_TICKS(100));
}

// *************************************************************************************************
// @fn          i2c_sda
// @brief       Control SDA line
// @param       u8 condition            PS_I2C_SEND_START, PS_I2C_SEND_RESTART, PS_I2C_SEND_STOP
//                                      PS_I2C_CHECK_ACK
// @return      u8                      1=ACK, 0=NACK
// *************************************************************************************************
u8 i2c_sda(u8 condition)
{
    u8 sda = 0;

    if (condition == I2C_SEND_START)
    {
    	I2C_SDA_OUT;      // SDA is output
    	I2C_SCL_HI;
        i2c_delay();
        I2C_SDA_LO;
        i2c_delay();
        I2C_SCL_LO;       // SDA 1-0 transition while SCL=1 (will be 0)
        i2c_delay();
    }
    else if (condition == I2C_SEND_RESTART)
    {
    	I2C_SDA_OUT;      // SDA is output
    	I2C_SCL_LO;
    	I2C_SDA_HI;
        i2c_delay();
        I2C_SCL_HI;
        i2c_delay();
        I2C_SDA_LO;
        i2c_delay();
        I2C_SCL_LO;       // SDA 1-0 while SCL = 1 (was 0)
        i2c_delay();
    }
    else if (condition == I2C_SEND_STOP)
    {
    	I2C_SDA_OUT;      // SDA is output
    	I2C_SDA_LO;
        i2c_delay();
        I2C_SCL_LO;
        i2c_delay();
        I2C_SCL_HI;
        i2c_delay();
        I2C_SDA_HI;       // SDA 0-1 transition while SCL=1
        i2c_delay();
    }
    else if (condition == I2C_CHECK_ACK)
    {
    	I2C_SDA_IN;       // SDA is input
    	I2C_SCL_LO;
        i2c_delay();
        I2C_SCL_HI;
        i2c_delay();
        sda = I2C_IN & SDA_PIN; // ACK = SDA during ack clock pulse
        I2C_SCL_LO;
    }

    // Return value will only be evaluated when checking device ACK
    return (sda == 0);
}

// *************************************************************************************************
// @fn          i2c_write
// @brief       Clock out bits through SDA.
// @param       u8 data                 Byte to send
// @return      none
// *************************************************************************************************
void i2c_write(u8 data)
{
    u8 i, mask;

    // Set mask byte to 10000000b
    mask = BIT0 << 7;

    I2C_SDA_OUT;                    // SDA is output

    for (i = 8; i > 0; i--)
    {
    	I2C_SCL_LO;                 // SCL=0
        if ((data & mask) == mask)
        {
        	I2C_SDA_HI;             // SDA=1
        }
        else
        {
        	I2C_SDA_LO;             // SDA=0
        }
        mask = mask >> 1;
        i2c_delay();
        I2C_SCL_HI;                 // SCL=1
        i2c_delay();
    }

    I2C_SCL_LO;                     // SCL=0
    I2C_SDA_IN;                     // SDA is input
}

// *************************************************************************************************
// @fn          i2c_read
// @brief       Read bits from SDA
// @param       u8 ack                  1=Send ACK after read, 0=Send NACK after read
// @return      u8                      Bits read
// *************************************************************************************************
u8 i2c_read(u8 ack)
{
    u8 i;
    u8 data = 0;

    I2C_SDA_IN;                     // SDA is input

    for (i = 0; i < 8; i++)
    {
    	I2C_SCL_LO;                 // SCL=0
        i2c_delay();
        I2C_SCL_HI;                 // SCL=0
        i2c_delay();

        // Shift captured bits to left
        data = data << 1;

        // Capture new bit
        if ((I2C_IN & SDA_PIN) == SDA_PIN)
            data |= BIT0;
    }

    I2C_SDA_OUT;                    // SDA is output

    // 1 aditional clock phase to generate master ACK
    I2C_SCL_LO;                     // SCL=0
    if (ack == 1)
    	I2C_SDA_LO                  // Send ack -> continue read
    else
    	I2C_SDA_HI                  // Send nack -> stop read
    i2c_delay();
    I2C_SCL_HI;                     // SCL=0
    i2c_delay();
    I2C_SCL_LO;

    return (data);
}

// *************************************************************************************************
// @fn          as_write_register
// @brief       Write a byte to the pressure sensor
// @param       u8 device               Device address
//              u8 address              Register address
//              u8 data                 Data to write
// @return      u8
// *************************************************************************************************
u8 i2c_write_register(u8 device, u8 data)
{
    volatile u8 success;

    i2c_sda(I2C_SEND_START);               // Generate start condition

    i2c_write(device | I2C_WRITE);         // Send 7bit device address + r/w bit '0' -> write
    success = i2c_sda(I2C_CHECK_ACK);      // Check ACK from device
    if (!success) {
    	I2C_SCL_HI;
    	i2c_sda(I2C_SEND_STOP);
       return (0);
    }

    i2c_write(data);                       // Send 8bit data to register
    success = i2c_sda(I2C_CHECK_ACK);      // Check ACK from device
    // Slave does not send this ACK
    //if (!success) return (0);

    i2c_sda(I2C_SEND_STOP);                // Generate stop condition

    return (1);
}

// *************************************************************************************************
// @fn          ps_read_register
// @brief       Read a byte from the pressure sensor
// @param       u8 device               Device address
//              u8 address              Register address
//              u8 mode                 PS_I2C_8BIT_ACCESS, PS_I2C_16BIT_ACCESS
// @return      u16                     Register content
// *************************************************************************************************
u16 i2c_read_register(u8 device, u8 mode)
{
    u8 success;
    u16 data = 0;

    i2c_sda(I2C_SEND_START);               // Generate start condition

    i2c_write(device | I2C_WRITE);         // Send 7bit device address + r/w bit '0' -> write
    success = i2c_sda(I2C_CHECK_ACK);      // Check ACK from device
    if (!success)
        return (0);

    i2c_sda(I2C_SEND_RESTART);             // Generate restart condition

    i2c_write(device | I2C_READ);          // Send 7bit device address + r/w bit '1' -> read
    success = i2c_sda(I2C_CHECK_ACK);      // Check ACK from device
    if (!success)
        return (0);

    if (mode == I2C_16BIT_ACCESS)
    {
        data = i2c_read(1) << 8;              // Read MSB 8bit data from register
        data |= i2c_read(0);                  // Read LSB 8bit data from register
    }
    else
    {
        data = i2c_read(0);                   // Read 8bit data from register
    }

    i2c_sda(I2C_SEND_STOP);                // Generate stop condition

    return (data);
}

// *************************************************************************************************
// @fn          ps_i2c_delay
// @brief       Delay between I2C signal edges.
// @param       none
// @return      none
// *************************************************************************************************
void i2c_delay(void)
{
    asm ("	nop");
}

///***************************************************************************************************
