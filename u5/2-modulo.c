#include <linux/module.h>
#include <linux/kernel.h>
#include <stdio.h>

int init_module(void) {
	printf(KERN_INFO "Este es el modulo\n");
	return 0;
}

void cleanup_module(void) {
	printf(KERN_INFO "Modulo descargado\n");
}
