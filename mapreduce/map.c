#include<stdio.h>
#include"api/openfpgaduino.h"
int main(int argc, char** argv)
{
	char c;
        fpga_open();
	while((c = getchar()) != 0xff)
	{
                led(0, c,c,c);
                led(1, 0,c&c,0);
                led(2, c|c,0,0);
                led(3, 0,0,c+c);
		putchar(c);
	}

	return 0;
}
