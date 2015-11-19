/***********************************************
//	Author				: CYTRON TECHNOLOGIES SDN BHD
//	Project description		: Interface 8x8 dot matrix display with SK40C + PIC16F887
//  This project is built using MPLAB IDE v8.85 and HI-TECH C compiler V9.80
***********************************************/
#include <htc.h>
#include "system.h"
__CONFIG(HS &			// External Crystal at High Speed.
		 WDTDIS &		// Disable Watchdog Timer.
		 PWRTEN &		// Enable Power Up Timer.
		 BORDIS &		// Disable Brown Out Reset.
		 MCLREN &		// MCLR function is enabled
		 LVPDIS);		// Disable Low Voltage Programming.
char expand_shrink_pattern[7][8] = {{0x00,0x00,0x00,0x00,0x00,0x00,0x03,0x03},	//patterns for demonstrating effect of expanding and shrinking box.
									{0x00,0x00,0x00,0x00,0x00,0x07,0x07,0x07},
									{0x00,0x00,0x00,0x00,0x0f,0x0f,0x0f,0x0f},
									{0x00,0x00,0x00,0x1f,0x1f,0x1f,0x1f,0x1f},											
									{0x00,0x00,0x3f,0x3f,0x3f,0x3f,0x3f,0x3f},
									{0x00,0x7f,0x7f,0x7f,0x7f,0x7f,0x7f,0x7f},
									{0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff}
									};
char love_shape_pattern_one_color[8] = {0x18,0x3c,0x7e,0xff,0xff,0xff,0xff,0x66};	//pattern of "Heart" shape in one color.
char love_shape_pattern_two_color[8] = {0x1e,0x3f,0x7f,0xfe,0xfe,0x7f,0x3f,0x1e};	//pattern of "Heart" shape in two color.
char number_alphabet[8];	//array for storing alphabet or number chosen.
char mode = 0;	//variable for mode, default is Mode 0.
void main (void)
{
	init();	// Initialization
	while(SW2 == 1)	//While SW2 is not pressed, users can select mode by pressing SW1.
	{
		if(SW1 == 0)
		{
			while(SW1 == 0);
			mode++;
			if(mode>6)
			{
				mode = 0;
			}
		}
		switch(mode)	//The dot matrix will display the current mode selected in green color.
		{
			case 0: light_a_number_alphabet('0',GREEN); 
					break;
			case 1: light_a_number_alphabet('1',GREEN); 
					break;
			case 2: light_a_number_alphabet('2',GREEN); 
					break;
			case 3: light_a_number_alphabet('3',GREEN); 
					break;
			case 4: light_a_number_alphabet('4',GREEN); 
					break;
			case 5: light_a_number_alphabet('5',GREEN); 
					break;
			case 6: light_a_number_alphabet('6',GREEN); 
					break;
			default:break;
		}
	}
	while(SW2 == 0);

	//The desired mode will be executed continuously.
	//To executed other modes, press the RESET button of SK40C, press SW1 select desired mode and press the SW2 to execute it. 
	while(1)
	{
		switch(mode)	
		{
			case 0:	running_dot(GREEN);
					break;
			case 1:	running_line(GREEN);
					break;
			case 2: light_pattern_one_color(love_shape_pattern_one_color,GREEN);
					break;
			case 3: light_pattern_one_color(love_shape_pattern_one_color,GREEN);
					light_pattern_one_color(love_shape_pattern_one_color,RED);
					break;
			case 4: light_pattern_two_color(love_shape_pattern_two_color,RED,GREEN);
					break;
			case 5:	running_string("CYTRON",GREEN);
					break;
			case 6: expand_shrink_square(GREEN);
				   	break;
			default: break;
		}	
	}
}

void init(void)
{	
	TRISA = 0;	//PORTA as outputs.
	TRISB = 0b00000011;	//pin RB0 and RB1 as inputs for SW1 and SW2, rest of pins of PORTB as outputs.
	TRISC = 0;	//PORTC as outputs.
	TRISD = 0;	//PORTD as outputs.

	//Transform all analog input pins of PIC16F887 for digital I/O function.
	ANSEL = 0;
	ANSELH = 0; 			
	ADCON0 = 0;

	LED1 = LED2 = 0;	//Turn off LED1 and LED2 of SK40C initially.
	PORTA = 0;	//Initialize outputs of PORTA as 0.
	PORTC = 0;	//Initialize outputs of PORTC as 0.
	PORTD = 0;	//Initialize outputs of PORTD as 0.
}

void delay_ms(unsigned long ms)
{
	while(ms--)
	{
		__delay_ms(1);
	}
}

//The explanations about subfunctions for dot matrix display is written as comments in the system.h file.
//Users may refer there for more information.
void light_a_dot(char row, char column, char color)
{
	PORTD = 1<<column;
  	if(color == GREEN)
  	{
     	PORTC = 0;
     	PORTA = 0b00001000 | row;
  	}
  	else if(color == RED)
  	{
     	PORTA = 0;
     	PORTC = 0b00001000 | row;
  	}
}

void light_a_row(char row, char color)
{
	PORTD = 0xFF;
  	if(color == GREEN)
  	{
		PORTC = 0;
     	PORTA = 0b00001000 | row;
  	}
  	else if(color == RED)
  	{
    	PORTA = 0;
     	PORTC = 0b00001000 | row;
  	} 
}

void light_a_column(char column, char color)
{
  	for(int i = 0; i<8; i++)
  	{
    	light_a_dot(i,column,color);
  	}
}

void light_all_dot(char color)
{
  	for(int i = 0; i<8; i++)
  	{
    	light_a_row(i,color); 
  	}
}

void light_all_dot_2(char color)
{
	for(int i = 0; i<8; i++)
	{
		for(int j = 0; j<8; j++)
		{
			light_a_dot(i,j,color);
		}
	}
}

void light_pattern_one_color(char pattern[8], char color)
{
  for(int i = 0; i<8 ; i++)
  {
      PORTD = pattern[7-i];
      if(color == GREEN)
      {
         PORTC = 0;
         PORTA = 0b00001000 | i;
      }
      else if(color == RED)
      {
         PORTA = 0;
         PORTC = 0b00001000 | i;
      } 
	  delay_ms(1);
  }
}

void light_a_column_two_color(char column, char column_pattern, char color_0, char color_1)
{
  char lsb_tester = 0;
  PORTD = 1<<column;
  for(int i = 7; i>=0; i--)
  {
     lsb_tester = (column_pattern >> i) & 0x01;
     if(lsb_tester)
     {
       light_a_dot(i,column,color_1);
     }
     
     else
     {
       light_a_dot(i,column,color_0);
     }	
  }
}

void light_pattern_two_color(char pattern[8],char color_0,char color_1)
{
  for(int i = 0; i<8; i++)
  {
	for(int time = 0; time<5; time++)
		light_a_column_two_color(i,pattern[i],color_0,color_1);
  } 
}

void running_dot(char color)
{
	for(int i = 0; i<8; i++)
	{
		for(int j = 0; j<8; j++)
		{
			light_a_dot(i,j,color);
			delay_ms(50);
		}
	}
}

void running_line(char color)
{
	for(int i = 0; i<8; i++)
	{
		light_a_row(i,color);
		delay_ms(100);
	}
	
	for(int i = 7; i>=0; i--)
	{
		light_a_row(i,color);
		delay_ms(100);
	}
}

void choose_num_alphabet(char num_alp, char num_alp_array[8])
{
	switch(num_alp)
	{
		case 'A': num_alp_array[0] = 0xc3;
				  num_alp_array[1] = 0xc3;
				  num_alp_array[2] = 0xff;
				  num_alp_array[3] = 0xff;
                  num_alp_array[4] = 0xc3;
				  num_alp_array[5] = 0xe7;
				  num_alp_array[6] = 0x7e;
				  num_alp_array[7] = 0x3c;
				  break;

		case 'B': num_alp_array[0] = 0x3f;
				  num_alp_array[1] = 0xff;
				  num_alp_array[2] = 0xc3;
				  num_alp_array[3] = 0xff;
                  num_alp_array[4] = 0xff;
				  num_alp_array[5] = 0xc3;
				  num_alp_array[6] = 0xff;
				  num_alp_array[7] = 0x3f;
				  break;

		case 'C': num_alp_array[0] = 0xff;
				  num_alp_array[1] = 0xff;
				  num_alp_array[2] = 0x03;
				  num_alp_array[3] = 0x03;
                  num_alp_array[4] = 0x03;
				  num_alp_array[5] = 0x03;
				  num_alp_array[6] = 0xff;
				  num_alp_array[7] = 0xff;
				  break;

		case 'D': num_alp_array[0] = 0x3f;
				  num_alp_array[1] = 0x7f;
				  num_alp_array[2] = 0xc3;
				  num_alp_array[3] = 0xc3;
                  num_alp_array[4] = 0xc3;
				  num_alp_array[5] = 0xc3;
				  num_alp_array[6] = 0x7f;
				  num_alp_array[7] = 0x3f;
				  break;

		case 'E': num_alp_array[0] = 0xff;
				  num_alp_array[1] = 0xff;
				  num_alp_array[2] = 0x03;
				  num_alp_array[3] = 0xff;
                  num_alp_array[4] = 0xff;
				  num_alp_array[5] = 0x03;
				  num_alp_array[6] = 0xff;
				  num_alp_array[7] = 0xff;
				  break;

		case 'F': num_alp_array[0] = 0x03;
				  num_alp_array[1] = 0x03;
				  num_alp_array[2] = 0x03;
				  num_alp_array[3] = 0xff;
                  num_alp_array[4] = 0xff;
				  num_alp_array[5] = 0x03;
				  num_alp_array[6] = 0xff;
				  num_alp_array[7] = 0xff;
				  break;

		case 'G': num_alp_array[0] = 0xfe;
				  num_alp_array[1] = 0xff;
				  num_alp_array[2] = 0xc3;
				  num_alp_array[3] = 0xf3;
                  num_alp_array[4] = 0xf3;
				  num_alp_array[5] = 0x03;
				  num_alp_array[6] = 0xfe;
				  num_alp_array[7] = 0xfc;
				  break;
					
		case 'H': num_alp_array[0] = 0xc3;
				  num_alp_array[1] = 0xc3;
				  num_alp_array[2] = 0xc3;
				  num_alp_array[3] = 0xff;
                  num_alp_array[4] = 0xff;
				  num_alp_array[5] = 0xc3;
				  num_alp_array[6] = 0xc3;
				  num_alp_array[7] = 0xc3;
				  break;

		case 'I': num_alp_array[0] = 0xff;
				  num_alp_array[1] = 0xff;
				  num_alp_array[2] = 0x18;
				  num_alp_array[3] = 0x18;
                  num_alp_array[4] = 0x18;
				  num_alp_array[5] = 0x18;
				  num_alp_array[6] = 0xff;
				  num_alp_array[7] = 0xff;
				  break;
		case 'J': num_alp_array[0] = 0x1e;
				  num_alp_array[1] = 0x3f;
				  num_alp_array[2] = 0x33;
				  num_alp_array[3] = 0x33;
                  num_alp_array[4] = 0x30;
				  num_alp_array[5] = 0x30;
				  num_alp_array[6] = 0xff;
				  num_alp_array[7] = 0xff;
				  break;
		case 'K': num_alp_array[0] = 0xc3;
				  num_alp_array[1] = 0x63;
				  num_alp_array[2] = 0x33;
				  num_alp_array[3] = 0x1f;
                  num_alp_array[4] = 0x1f;
				  num_alp_array[5] = 0x33;
				  num_alp_array[6] = 0x63;
				  num_alp_array[7] = 0xc3;
				  break;
		case 'L': num_alp_array[0] = 0xff;
				  num_alp_array[1] = 0xff;
				  num_alp_array[2] = 0x03;
				  num_alp_array[3] = 0x03;
                  num_alp_array[4] = 0x03;
				  num_alp_array[5] = 0x03;
				  num_alp_array[6] = 0x03;
				  num_alp_array[7] = 0x03;
				  break;
		case 'M': num_alp_array[0] = 0xc3;
				  num_alp_array[1] = 0xc3;
				  num_alp_array[2] = 0xc3;
				  num_alp_array[3] = 0xc3;
                  num_alp_array[4] = 0xdb;
				  num_alp_array[5] = 0xff;
				  num_alp_array[6] = 0xe7;
				  num_alp_array[7] = 0xc3;
				  break;

		case 'N': num_alp_array[0] = 0xc3;
				  num_alp_array[1] = 0xe3;
				  num_alp_array[2] = 0xf3;
				  num_alp_array[3] = 0xfb;
                  num_alp_array[4] = 0xdf;
				  num_alp_array[5] = 0xcf;
				  num_alp_array[6] = 0xc7;
				  num_alp_array[7] = 0xc3;
				  break;

		case 'O': num_alp_array[0] = 0x3c;
				  num_alp_array[1] = 0x7e;
				  num_alp_array[2] = 0xc3;
				  num_alp_array[3] = 0xc3;
                  num_alp_array[4] = 0xc3;
				  num_alp_array[5] = 0xc3;
				  num_alp_array[6] = 0x7e;
				  num_alp_array[7] = 0x3c;
				  break;

		case 'P': num_alp_array[0] = 0x03;
				  num_alp_array[1] = 0x03;
				  num_alp_array[2] = 0x7f;
				  num_alp_array[3] = 0xff;
                  num_alp_array[4] = 0xc3;
				  num_alp_array[5] = 0xc3;
				  num_alp_array[6] = 0xff;
				  num_alp_array[7] = 0x7f;
				  break;

		case 'Q': num_alp_array[0] = 0xde;
				  num_alp_array[1] = 0x7f;
				  num_alp_array[2] = 0xf3;
				  num_alp_array[3] = 0xdb;
                  num_alp_array[4] = 0xc3;
				  num_alp_array[5] = 0xc3;
				  num_alp_array[6] = 0x7e;
				  num_alp_array[7] = 0x3c;
				  break;

		case 'R': num_alp_array[0] = 0xc3;
				  num_alp_array[1] = 0xe3;
				  num_alp_array[2] = 0x73;
				  num_alp_array[3] = 0x7f;
                  num_alp_array[4] = 0xff;
				  num_alp_array[5] = 0xc3;
				  num_alp_array[6] = 0xff;
				  num_alp_array[7] = 0x7f;
				  break;

		case 'S': num_alp_array[0] = 0xff;
				  num_alp_array[1] = 0xff;
				  num_alp_array[2] = 0xc0;
				  num_alp_array[3] = 0xff;
                  num_alp_array[4] = 0xff;
				  num_alp_array[5] = 0x03;
				  num_alp_array[6] = 0xff;
				  num_alp_array[7] = 0xff;
				  break;

		case 'T': num_alp_array[0] = 0x18;
				  num_alp_array[1] = 0x18;
				  num_alp_array[2] = 0x18;
				  num_alp_array[3] = 0x18;
                  num_alp_array[4] = 0x18;
				  num_alp_array[5] = 0x18;
				  num_alp_array[6] = 0xff;
				  num_alp_array[7] = 0xff;
				  break;
		case 'U': num_alp_array[0] = 0x7e;
				  num_alp_array[1] = 0xff;
				  num_alp_array[2] = 0xc3;
				  num_alp_array[3] = 0xc3;
                  num_alp_array[4] = 0xc3;
				  num_alp_array[5] = 0xc3;
				  num_alp_array[6] = 0xc3;
				  num_alp_array[7] = 0xc3;
				  break;

		case 'V': num_alp_array[0] = 0x18;
				  num_alp_array[1] = 0x3c;
				  num_alp_array[2] = 0x66;
				  num_alp_array[3] = 0xe7;
                  num_alp_array[4] = 0xc3;
				  num_alp_array[5] = 0xc3;
				  num_alp_array[6] = 0xc3;
				  num_alp_array[7] = 0xc3;
				  break;

		case 'W': num_alp_array[0] = 0xc3;
				  num_alp_array[1] = 0xe7;
				  num_alp_array[2] = 0xff;
				  num_alp_array[3] = 0xdb;
                  num_alp_array[4] = 0xc3;
				  num_alp_array[5] = 0xc3;
				  num_alp_array[6] = 0xc3;
				  num_alp_array[7] = 0xc3;
				  break;

		case 'X': num_alp_array[0] = 0xc3;
				  num_alp_array[1] = 0xc3;
				  num_alp_array[2] = 0x66;
				  num_alp_array[3] = 0x3c;
                  num_alp_array[4] = 0x3c;
				  num_alp_array[5] = 0x66;
				  num_alp_array[6] = 0xc3;
				  num_alp_array[7] = 0xc3;
				  break;

		case 'Y': num_alp_array[0] = 0x18;
				  num_alp_array[1] = 0x18;
				  num_alp_array[2] = 0x18;
				  num_alp_array[3] = 0x18;
                  num_alp_array[4] = 0x3c;
				  num_alp_array[5] = 0x66;
				  num_alp_array[6] = 0xc3;
				  num_alp_array[7] = 0xc3;
				  break;
		case 'Z': num_alp_array[0] = 0xff;
				  num_alp_array[1] = 0xff;
				  num_alp_array[2] = 0x0e;
				  num_alp_array[3] = 0x1c;
                  num_alp_array[4] = 0x38;
				  num_alp_array[5] = 0x70;
				  num_alp_array[6] = 0xff;
				  num_alp_array[7] = 0xff;
				  break;
		case '0': num_alp_array[0] = 0xff;
				  num_alp_array[1] = 0xff;
				  num_alp_array[2] = 0xc3;
				  num_alp_array[3] = 0xc3;
                  num_alp_array[4] = 0xc3;
				  num_alp_array[5] = 0xc3;
				  num_alp_array[6] = 0xff;
				  num_alp_array[7] = 0xff;	
				  break;
		case '1': num_alp_array[0] = 0x18;
				  num_alp_array[1] = 0x18;
				  num_alp_array[2] = 0x18;
				  num_alp_array[3] = 0x18;
                  num_alp_array[4] = 0x18;
				  num_alp_array[5] = 0x18;
				  num_alp_array[6] = 0x18;
				  num_alp_array[7] = 0x18;	
				  break;
		case '2': num_alp_array[0] = 0xff;
				  num_alp_array[1] = 0xff;
				  num_alp_array[2] = 0x03;
				  num_alp_array[3] = 0xff;
                  num_alp_array[4] = 0xff;
				  num_alp_array[5] = 0xc0;
				  num_alp_array[6] = 0xff;
				  num_alp_array[7] = 0xff;	
				  break;
		case '3': num_alp_array[0] = 0xff;
				  num_alp_array[1] = 0xff;
				  num_alp_array[2] = 0xc0;
				  num_alp_array[3] = 0xff;
                  num_alp_array[4] = 0xff;
				  num_alp_array[5] = 0xc0;
				  num_alp_array[6] = 0xff;
				  num_alp_array[7] = 0xff;	
				  break;	
		case '4': num_alp_array[0] = 0xc0;
				  num_alp_array[1] = 0xc0;
				  num_alp_array[2] = 0xc0;
				  num_alp_array[3] = 0xff;
                  num_alp_array[4] = 0xff;
				  num_alp_array[5] = 0xc3;
				  num_alp_array[6] = 0xc3;
				  num_alp_array[7] = 0xc3;	
				  break;
		case '5': num_alp_array[0] = 0xff;
				  num_alp_array[1] = 0xff;
				  num_alp_array[2] = 0xc0;
				  num_alp_array[3] = 0xff;
                  num_alp_array[4] = 0xff;
				  num_alp_array[5] = 0x03;
				  num_alp_array[6] = 0xff;
				  num_alp_array[7] = 0xff;
				  break;
		case '6': num_alp_array[0] = 0xff;
				  num_alp_array[1] = 0xff;
				  num_alp_array[2] = 0xc3;
				  num_alp_array[3] = 0xff;
                  num_alp_array[4] = 0xff;
				  num_alp_array[5] = 0x03;
				  num_alp_array[6] = 0xff;
				  num_alp_array[7] = 0xff;
				  break;
		case '7': num_alp_array[0] = 0xc0;
				  num_alp_array[1] = 0xc0;
				  num_alp_array[2] = 0xc0;
				  num_alp_array[3] = 0xc0;
                  num_alp_array[4] = 0xc0;
				  num_alp_array[5] = 0xc0;
				  num_alp_array[6] = 0xff;
				  num_alp_array[7] = 0xff;
				  break;
		case '8': num_alp_array[0] = 0xff;
				  num_alp_array[1] = 0xff;
				  num_alp_array[2] = 0xc3;
				  num_alp_array[3] = 0xff;
                  num_alp_array[4] = 0xff;
				  num_alp_array[5] = 0xc3;
				  num_alp_array[6] = 0xff;
				  num_alp_array[7] = 0xff;
				  break;
		case '9': num_alp_array[0] = 0xc0;
				  num_alp_array[1] = 0xc0;
				  num_alp_array[2] = 0xc0;
				  num_alp_array[3] = 0xff;
                  num_alp_array[4] = 0xff;
				  num_alp_array[5] = 0xc3;
				  num_alp_array[6] = 0xff;
				  num_alp_array[7] = 0xff;	
				  break;
		default:break;		  
	}
}

void light_a_number_alphabet(char num_alp,char color)
{
	choose_num_alphabet(num_alp,number_alphabet);
	light_pattern_one_color(number_alphabet,color);
}

void running_string(char* sentence,char color)
{
	for(int i = 0; sentence[i] != '\0'; i++)
	{
		for(int j = 0; j<50; j++)
			light_a_number_alphabet(sentence[i], color);
	}
}

void expand_shrink_square(char color)
{
	for(int i = 0; i<7; i++)
		for(int j = 0; j<5; j++)	
			light_pattern_one_color(expand_shrink_pattern[i],color);
	
	for(int i = 6; i>=0; i--)
		for(int j = 0; j<5; j++)
			light_pattern_one_color(expand_shrink_pattern[i],color);
}

