#include <stdint.h>
#include <stdbool.h>
#include "main.h"
#include "drivers/pinout.h"
#include "utils/uartstdio.h"


 //============================================================================================================

// Flash the LEDs on the launchpad
void LEDTask(void *pvParameters)
{
    for (;;)
    {
        // Turn on LED 1
        LEDWrite(0x0F, 0x01);
        vTaskDelay(500);// 1 sec

        // Turn on LED 2
        LEDWrite(0x0F, 0x02);
        vTaskDelay(500);

        // Turn on LED 3
        LEDWrite(0x0F, 0x04);
        vTaskDelay(500);

        // Turn on LED 4
        LEDWrite(0x0F, 0x08);
        vTaskDelay(500);
    }
}


