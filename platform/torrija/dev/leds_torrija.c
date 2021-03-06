/**
 * The LED driver defines a number of macros allowing LED control.
 * There is a LED on the platform in pin 5.0.
 * 
 */

/**
 * \file
 * \brief LED driver.
 * \author Luis Maqueda <lc.maqueda@gmail.com>
 * \date May 2010
 */

#include "dev/leds_torrija.h"

/**
 * \brief Turn the LEDx on.
 * \hideinitializer
 */
void led_on(unsigned char led) {
	LEDS_OUT |= led;	
}

/**
 * \brief Turn the LEDx off.
 * \hideinitializer
 */
void led_off(unsigned char led) {
	LEDS_OUT &= ~(led);	
}

/**
 * \brief Toggle the LEDx.
 * \hideinitializer
 */
 
void led_toggle(unsigned char led) {
	LEDS_OUT ^=  led;	
}

/**
 * \brief Configure the IO port of the MSP430.
 * 
 * This function should be called first to enable the others to work. 
 * \hideinitializer
 */
void leds_init() {
	/*
	 *  Set pins 6.5, 6.6 and 6.7 as output.
	 */
	P8DIR |= LED_GREEN;
    P8DIR |= LED_YELLOW;
    P8DIR |= LED_RED;
    /* 
     * Set pin 6.5, 6.6 and 6.7 function as I/O.
     */
	P8SEL &= ~(LED_GREEN);
    P8SEL &= ~(LED_YELLOW);
    P8SEL &= ~(LED_RED);
    /*
     * Turn leds off.
     */
	led_off(LED_GREEN);
	led_off(LED_YELLOW);
	led_off(LED_RED);
}
