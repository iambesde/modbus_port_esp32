#include "app_ac_dev.h"
#include "app_modbus.h"
#include "app_console.h"

#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "esp_wifi.h"
#include "esp_event_loop.h"
#include "lwip/err.h"
#include "lwip/sys.h"
#include "freertos/event_groups.h"

void app_main()
{
	tcpip_adapter_init();
	vlwIPInit();
	int bits = xEventGroupWaitBits(s_wifi_event_group, WIFI_CONNECTED_BIT, 0, 1, portMAX_DELAY);
  	vTaskDelay(1000 / portTICK_PERIOD_MS);	

    xTaskCreate(modebus_task,"modebus_task",1024*80,NULL,5,NULL);
	
    app_console_init();
    app_console_run();
}
