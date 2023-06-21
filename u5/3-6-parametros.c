#include <linux/module.h>
#include <linux/kernel.h>
#include <linux/moduleparam.h>

int frecuencia = 1;
module_param(frequency, int, 0644);
MODULE_PARM_DESC(frequency, "Frecuencia de impresion de mensajes");

int init_module(void) {
	printk(KERN_INFO "Modulo cargafo. Frecuencia %d\n", frequency);
	return 0;
}

void cleanup_module(void) {
	printk(KERN_INFO "Modulo descargado.\n");
}

