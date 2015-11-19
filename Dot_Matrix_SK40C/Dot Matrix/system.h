#ifndef _SYSTEM_H
#define _SYSTEM_H

enum {GREEN = 0, RED = 1};	//enumerates colors GREEN and RED for easier understanding in programming 
/*****define*****/
#define	_XTAL_FREQ	20000000	//crystal frequency 20 Mhz

#define SW1 RB0		//RB0 & RB1 as switches
#define SW2 RB1							

#define LED1 RB6	//RB6 & RB7 as leds 
#define LED2 RB7

/*****Connections from SK40C with PIC16F887 to 74HC237 decoder(#1)*****
RA3 to EN pin of decoder(#1)
RA2 to A2 pin of decoder(#1) 
RA1 to A1 pin of decoder(#1)
RA0 to A0 pin of decoder(#1)
***********************************************************************/

/*****Connections from SK40C with PIC16F887 to 74HC237 decoder(#2)*****
RC3 to EN pin of decoder(#2)
RC2 to A2 pin of decoder(#2)
RC1 to A1 pin of decoder(#2)
RC0 to A0 pin of decoder(#2)
***********************************************************************/

void init(void);
void delay_ms(unsigned long ms);
void light_a_dot(char row, char column, char color);
/***************************************************
Name: void light_a_dot(char row, char column, char color)
Function: Light up a dot in color chosen located at particular row and column.
Arguments: row - row of the dot.
		   column - column of the dot.
		   color - color of the dot.
Example: light_a_dot(0,0,GREEN);	//light up the dot located at row 1, column 1 of the dot matrix display in green color.
Note: The index starts from 0 to indicate first row or first coulumn in programming.
***************************************************/

void light_a_row(char row, char color);
/***************************************************
Name: void light_a_row(char row, char color)
Function: Light up a row of dots in color chosen located at particular row.
Arguments: row - row to be lighted up.
		   color - color of the row lighted up.
Example: light_a_row(0,GREEN);	//light up row of dots located at row 1 of the dot matrix display in green color.
Note: The index starts from 0 to indicate first row or first coulumn in programming.
***************************************************/

void light_a_column(char column, char color);
/***************************************************
Name: void light_a_column(char column, char color)
Function: Light up a column of dots in color chosen located at particular column.
Arguments: column - column to be lighted up.
		   color - color of the column lighted up.
Example: light_a_column(0,GREEN);	//light up column of dots located at column 1 of the dot matrix display in green color.
Note: The index starts from 0 to indicate first row or first coulumn in programming.
***************************************************/

void light_all_dot(char color);
/***************************************************
Name: void light_all_dot(char color)
Function: Light up all dots of dot matrix display in color chosen (by light up row by row in sequence rapidly in a continuos way)
Arguments: color - color of dots.
Example: light_all_dot(GREEN);	//light up all dots of dot matrix display in green color.
Note: The index starts from 0 to indicate first row or first coulumn in programming.
***************************************************/

void light_all_dot_2(char color);
/***************************************************
Name: void light_all_dot_2(char color)
Function: Light up all dots of dot matrix display in color chosen (by light up dot by dot in sequence rapidly in a continuos way)
Arguments: color - color of dots.
Example: light_all_dot_2(GREEN);	//light up all dots of dot matrix display in green color.
Note: The index starts from 0 to indicate first row or first coulumn in programming.
***************************************************/

void light_pattern_one_color(char pattern[8], char color);
/***************************************************
Name: void light_pattern_one_color(char pattern[8], char color)
Function: Light up a pattern in color chosen.
Arguments: pattern - pattern to be displayed on the dot matrix display.
		   color - color of the pattern.
Example: light_pattern_one_color(pattern, GREEN);	//light up user-defined pattern on the dot matrix display in green color.
Note: 1.Users may need to decalre an array of size 8 and initialize it with pattern to be displayed. 
	  2.The index starts from 0 to indicate first row or first coulumn in programming.
For eg: if users desired to display "C" pattern as shown below,
							By taking 0 as and * as 1		Reverse it since (Column 8 is connected to MSB of PORTD)	Change to hex
row 1 * * * * * * * *	--> 11111111 						0b11111111													0xff
    2 * * * * * * * *   --> 11111111 						0b11111111													0xff
    3 *	* 0 0 0 0 0 0   --> 11000000						0b00000011													0x03
	4 *	* 0 0 0 0 0 0	--> 11000000	                    0b00000011													0x03
	5 *	* 0 0 0 0 0 0   --> 11000000                        0b00000011													0x03
	6 * * 0 0 0 0 0 0   --> 11000000  						0b00000011													0x03
	7 * * * * * * * *   --> 11111111						0b11111111													0xff
	8 * * * * * * * *   --> 11111111						0b11111111													0xff
col	  1 2 3 4 5 6 7 8 

Fill up the array with the pattern starts from row 8, then proceed untill row 1:
	char array[8] = {0xff,0xff,0x03,0x03,0x03,0x03,0xff,0xff};
Then call subfunction like this:
	light_pattern_one_color(array, GREEN);
***************************************************/

void light_a_column_two_color(char column, char column_pattern, char color_0, char color_1);
/***************************************************
Name: void light_a_column_two_color(char column, char column_pattern, char color_0, char color_1)
Function: Light up a column in two colors.
Arguments: column - column to be lighted up. 
		   pattern - pattern to be lighted up at the column chosen.
		   color_0 - color for bit 0.
		   color_1 - color for bit 1.		
Example: light_a_column_two_color(0,pattern, GREEN, RED);	//light up user-defined pattern at column 1 of the dot matrix display. 
														    //green color for bit 0, red color for bit 1.
Note: The index starts from 0 to indicate first row or first coulumn in programming.
For eg: if users desired to display pattern as shown below,
							By taking G as bit 0 and R as bit 1	(G symbolize green, R symbolize red)	
row 1 R 					--> 1						
    2 R    					--> 1 						
    3 R	   					--> 1						
	4 G						--> 0	                    
	5 G	   					--> 0                        
	6 G    					--> 0  						
	7 R   					--> 1						
	8 R    					--> 1						
col	  1 2 3 4 5 6 7 8 
The MSB is row 8, hence the column 1 pattern is 0b11000111, 0xc7 in hex.
Then, the subfunction can be called like this:
	light_a_column_two_color(0, 0xc7, GREEN, RED);
***************************************************/

void light_pattern_two_color(char pattern[8],char color_0,char color_1);
/***************************************************
Name: void light_pattern_two_color(char pattern[8], char color_0, char color_1)
Function: Light up a pattern in two colors.
Arguments: pattern - pattern to be displayed on the dot matrix display.
		   color_0 - color for bit 0.
		   color_1 - color for bit 1.		
Example: light_pattern_two_color(pattern, GREEN, RED);	//light up user-defined pattern on the dot matrix display.
														//green color for bit 0, red color for bit 1.
Note: The index starts from 0 to indicate first row or first coulumn in programming.
For eg: if users desired to display pattern as shown below ('C' character in red color with yellow background)

							By taking G as bit 0 and R as bit 1	(G symbolize green, R symbolize red)	
row 1  R R R R R R R R 		--> 1 1 1 1 1 1 1 1						
    2  R R R R R R R R   	--> 1 1 1 1 1 1 1 1					
    3  R R G G G G G G   	--> 1 1	0 0 0 0 0 0 				
	4  R R G G G G G G 		--> 1 1 0 0 0 0 0 0                  
	5  R R G G G G G G  	--> 1 1 0 0 0 0 0 0                    
	6  R R G G G G G G   	--> 1 1 0 0 0 0 0 0					
	7  R R R R R R R R  	--> 1 1 1 1 1 1 1 1 					
	8  R R R R R R R R   	--> 1 1 1 1 1 1 1 1
					
col	  1 2 3 4 5 6 7 8 

The MSB is row 8, hence 
The column 1 pattern is 0b11111111, 0xff in hex.
The column 2 pattern is 0b11111111, 0xff in hex.
The column 3 pattern is 0b11000011, 0xc3 in hex.
The column 4 pattern is 0b11000011, 0xc3 in hex.
The column 5 pattern is 0b11000011, 0xc3 in hex.
The column 6 pattern is 0b11000011, 0xc3 in hex.
The column 7 pattern is 0b11000011, 0xc3 in hex.
The column 8 pattern is 0b11000011, 0xc3 in hex.

Fill up the array with the pattern starts from column 1, then proceed untill column 8:
char array[8] = {0xff,0xff,0xc3,0xc3,0xc3,0xc3,0xff,0xff};
Then, the subfunction can be called like this:
	light_pattern_two_color(array, GREEN, RED);
***************************************************/

void running_dot(char color);
/***************************************************
Name: void running_dot(char color)
Function: Effect of a dot running throughout the dot matrix display.
Arguments: color - color of dot
Example: running_dot(GREEN);	//a green dot running throughout the dot matrix display.
***************************************************/

void running_line(char color);
/***************************************************
Name: void running_line(char color)
Function: Effect of a row of dots running throughout the dot matrix display.
Arguments: color - color of dots
Example: running_line(GREEN);	//a row of green dots running throughout the dot matrix display up and down.
***************************************************/

void choose_num_alphabet(char num_alp, char num_alp_array[8]);
/***************************************************
Name: void choose_num_alphabet(unsigned char num_alp, unsigned char num_alp_array[8])
Function: Choose pattern of one of the alphabets (A-Z(capital letters)) or one of digits (0-9) to be displayed on the dot matrix display.
Arguments: num_alp - alphabet or digit chosen.
		   num_alp - array to stored alphabet or digit chosen.
Example: choose_num_alphabet('A',array);	//choose the 'A' pattern and store it in an array.
		 choose_num_alphabet('0',array);	//choose the '0' pattern and store it in an array.
***************************************************/

void light_a_number_alphabet(char num_alp,char color);
/***************************************************
Name: void light_a_number_alphabet(char num_alp,char color);
Function: Display a particular alphabet or digit in color chosen on the dot matrix display.
Arguments: num_alp - alphabet or digit to be displayed.
		   color - color in which the alphabet or the digit to be displayed.
Example: light_a_number_alphabet('A',GREEN);	//light up the 'A' pattern in green color on the dot matrix display.
		 light_a_number_alphabet('0',GREEN);	//light up the '0' pattern in green color on the dot matrix display.
***************************************************/

void running_string(char* sentence,char color);
/***************************************************
Name: running_string(char* sentence,char color);
Function: Display each charater of a string in sequence on the dot matrix display.
Arguments: sentence - string to be displayed.
		   color - color in which the string to be displayed.
Example: running_string("CYTRON",char color);	//Display each charater of "CYTRON" in sequence on the dot matrix display. 
Note: Limited for capital letters only.
***************************************************/

void expand_shrink_square(char color);
/***************************************************
Name: void expand_shrink_square(char color)
Function: Effect of expanding and shrinking box on the dot matrix display.
Arguments: color - color in which the effect to be displayed.
Example: expand_shrink_square(GREEN); //Effect of expanding and shrinking box in green color on the dot matrix display	
***************************************************/
#endif
