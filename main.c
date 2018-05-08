/*
 * main.c - Sample application to switch to STA mode, constant IP,  connect and ping AP
 *
 * Copyright (C) 2014 Texas Instruments Incorporated - http://www.ti.com/
 *
 *
 *  Redistribution and use in source and binary forms, with or without
 *  modification, are permitted provided that the following conditions
 *  are met:
 *
 *    Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 *
 *    Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the
 *    distribution.
 *
 *    Neither the name of Texas Instruments Incorporated nor the names of
 *    its contributors may be used to endorse or promote products derived
 *    from this software without specific prior written permission.
 *
 *  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
 *  "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
 *  LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
 *  A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
 *  OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
 *  SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
 *  LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
 *  DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
 *  THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
 *  (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
 *  OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 *
 */

/*
 * Application Name     -   Getting started with Wi-Fi STATION mode
 * Application Overview -   This is a sample application demonstrating how to
 *                          start CC3100 in WLAN-Station mode and connect to a
 *                          Wi-Fi access-point. The application connects to an
 *                          access-point and ping's the gateway. It also checks
 *                          for an internet connectivity by pinging "www.ti.com"
 * Application Details  -   http://processors.wiki.ti.com/index.php/CC31xx_Getting_Started_with_WLAN_Station
 *                          doc\examples\getting_started_with_wlan_station.pdf
 */
 //Micha N -  Add freertos support
/**/
#include <stdint.h>
#include <stdbool.h>
#include "main.h"
#include "drivers/pinout.h"
#include "utils/uartstdio.h"

// TivaWare includes
#include "driverlib/sysctl.h"
#include "driverlib/debug.h"
#include "driverlib/rom.h"
#include "driverlib/rom_map.h"

// FreeRTOS includes
#include "FreeRTOSConfig.h"
#include "FreeRTOS.h"
#include "task.h"
#include "queue.h"

#include "simplelink.h"
#include "sl_common.h"




// Demo Task declarations
extern void LEDTask(void *pvParameters);
extern void cc3100Task(void *pvParameters);


/*
 * ------------------------------------------------- Application's entry point ----------------------------------------------------
 */
int main(int argc, char** argv)
{
    _i32 retVal = -1;


    /* Stop WDT and initialize the system-clock of the MCU */
    stopWDT();
    initClk();
    // Initialize the GPIO pins for the Launchpad
    PinoutSet(false, false);

    /* Configure command line interface */
    CLI_Configure();

       // Create demo tasks
    xTaskCreate(LEDTask, (const portCHAR *)"LEDs",configMINIMAL_STACK_SIZE, NULL, 1, NULL);
    xTaskCreate(cc3100Task, (const portCHAR *)"cc3100",configMINIMAL_STACK_SIZE, NULL, 1, NULL);

    vTaskStartScheduler();
    return 0;
}

