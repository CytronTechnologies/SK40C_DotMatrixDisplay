opt subtitle "HI-TECH Software Omniscient Code Generator (Lite mode) build 6738"

opt pagewidth 120

	opt lm

	processor	16F887
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
indf	equ	0
indf0	equ	0
pc	equ	2
pcl	equ	2
status	equ	3
fsr	equ	4
fsr0	equ	4
c	equ	1
z	equ	0
pclath	equ	10
# 8 "C:\Users\younce\Documents\Dot Matrix\Dot Matrix.c"
	psect config,class=CONFIG,delta=2 ;#
# 8 "C:\Users\younce\Documents\Dot Matrix\Dot Matrix.c"
	dw 0x3FFA & 0x3FF7 & 0x3FEF & 0x3CFF & 0x3FFF & 0x2FFF ;#
	FNCALL	_main,_init
	FNCALL	_main,_light_a_number_alphabet
	FNCALL	_main,_running_dot
	FNCALL	_main,_running_line
	FNCALL	_main,_light_pattern_one_color
	FNCALL	_main,_light_pattern_two_color
	FNCALL	_main,_running_string
	FNCALL	_main,_expand_shrink_square
	FNCALL	_running_string,_light_a_number_alphabet
	FNCALL	_expand_shrink_square,_light_pattern_one_color
	FNCALL	_light_a_number_alphabet,_choose_num_alphabet
	FNCALL	_light_a_number_alphabet,_light_pattern_one_color
	FNCALL	_light_pattern_two_color,_light_a_column_two_color
	FNCALL	_light_pattern_one_color,_delay_ms
	FNCALL	_running_line,_light_a_row
	FNCALL	_running_line,_delay_ms
	FNCALL	_running_dot,_light_a_dot
	FNCALL	_running_dot,_delay_ms
	FNCALL	_light_a_column_two_color,_light_a_dot
	FNROOT	_main
	global	_love_shape_pattern_one_color
	global	_love_shape_pattern_two_color
	global	_expand_shrink_pattern
psect	idataBANK0,class=CODE,space=0,delta=2
global __pidataBANK0
__pidataBANK0:
	file	"C:\Users\younce\Documents\Dot Matrix\Dot Matrix.c"
	line	22

;initializer for _love_shape_pattern_one_color
	retlw	018h
	retlw	03Ch
	retlw	07Eh
	retlw	0FFh
	retlw	0FFh
	retlw	0FFh
	retlw	0FFh
	retlw	066h
	line	23

;initializer for _love_shape_pattern_two_color
	retlw	01Eh
	retlw	03Fh
	retlw	07Fh
	retlw	0FEh
	retlw	0FEh
	retlw	07Fh
	retlw	03Fh
	retlw	01Eh
psect	idataBANK1,class=CODE,space=0,delta=2
global __pidataBANK1
__pidataBANK1:
	line	14

;initializer for _expand_shrink_pattern
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	03h
	retlw	03h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	07h
	retlw	07h
	retlw	07h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0Fh
	retlw	0Fh
	retlw	0Fh
	retlw	0Fh
	retlw	0
	retlw	0
	retlw	0
	retlw	01Fh
	retlw	01Fh
	retlw	01Fh
	retlw	01Fh
	retlw	01Fh
	retlw	0
	retlw	0
	retlw	03Fh
	retlw	03Fh
	retlw	03Fh
	retlw	03Fh
	retlw	03Fh
	retlw	03Fh
	retlw	0
	retlw	07Fh
	retlw	07Fh
	retlw	07Fh
	retlw	07Fh
	retlw	07Fh
	retlw	07Fh
	retlw	07Fh
	retlw	0FFh
	retlw	0FFh
	retlw	0FFh
	retlw	0FFh
	retlw	0FFh
	retlw	0FFh
	retlw	0FFh
	retlw	0FFh
	global	_mode
	global	_number_alphabet
	global	_ADCON0
_ADCON0	set	31
	global	_PORTA
_PORTA	set	5
	global	_PORTC
_PORTC	set	7
	global	_PORTD
_PORTD	set	8
	global	_RB0
_RB0	set	48
	global	_RB1
_RB1	set	49
	global	_RB6
_RB6	set	54
	global	_RB7
_RB7	set	55
	global	_TRISA
_TRISA	set	133
	global	_TRISB
_TRISB	set	134
	global	_TRISC
_TRISC	set	135
	global	_TRISD
_TRISD	set	136
	global	_ANSEL
_ANSEL	set	392
	global	_ANSELH
_ANSELH	set	393
psect	strings,class=STRING,delta=2
global __pstrings
__pstrings:
;	global	stringdir,stringtab,__stringbase
stringtab:
;	String table - string pointers are 1 byte each
stringcode:stringdir:
movlw high(stringdir)
movwf pclath
movf fsr,w
incf fsr
	addwf pc
__stringbase:
	retlw	0
psect	strings
	
STR_1:	
	retlw	67	;'C'
	retlw	89	;'Y'
	retlw	84	;'T'
	retlw	82	;'R'
	retlw	79	;'O'
	retlw	78	;'N'
	retlw	0
psect	strings
	file	"Dot Matrix.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_mode:
       ds      1

_number_alphabet:
       ds      8

psect	dataBANK0,class=BANK0,space=1
global __pdataBANK0
__pdataBANK0:
	file	"C:\Users\younce\Documents\Dot Matrix\Dot Matrix.c"
	line	22
_love_shape_pattern_one_color:
       ds      8

psect	dataBANK0
	file	"C:\Users\younce\Documents\Dot Matrix\Dot Matrix.c"
	line	23
_love_shape_pattern_two_color:
       ds      8

psect	dataBANK1,class=BANK1,space=1
global __pdataBANK1
__pdataBANK1:
	file	"C:\Users\younce\Documents\Dot Matrix\Dot Matrix.c"
	line	14
_expand_shrink_pattern:
       ds      56

; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	clrf	((__pbssBANK0)+0)&07Fh
	clrf	((__pbssBANK0)+1)&07Fh
	clrf	((__pbssBANK0)+2)&07Fh
	clrf	((__pbssBANK0)+3)&07Fh
	clrf	((__pbssBANK0)+4)&07Fh
	clrf	((__pbssBANK0)+5)&07Fh
	clrf	((__pbssBANK0)+6)&07Fh
	clrf	((__pbssBANK0)+7)&07Fh
	clrf	((__pbssBANK0)+8)&07Fh
global btemp
psect inittext,class=CODE,delta=2
global init_fetch,btemp
;	Called with low address in FSR and high address in W
init_fetch:
	movf btemp,w
	movwf pclath
	movf btemp+1,w
	movwf pc
global init_ram
;Called with:
;	high address of idata address in btemp 
;	low address of idata address in btemp+1 
;	low address of data in FSR
;	high address + 1 of data in btemp-1
init_ram:
	fcall init_fetch
	movwf indf,f
	incf fsr,f
	movf fsr,w
	xorwf btemp-1,w
	btfsc status,2
	retlw 0
	incf btemp+1,f
	btfsc status,2
	incf btemp,f
	goto init_ram
; Initialize objects allocated to BANK1
psect cinit,class=CODE,delta=2
global init_ram, __pidataBANK1
	bcf	status, 7	;select IRP bank0
	movlw low(__pdataBANK1+56)
	movwf btemp-1,f
	movlw high(__pidataBANK1)
	movwf btemp,f
	movlw low(__pidataBANK1)
	movwf btemp+1,f
	movlw low(__pdataBANK1)
	movwf fsr,f
	fcall init_ram
; Initialize objects allocated to BANK0
psect cinit,class=CODE,delta=2
global init_ram, __pidataBANK0
	movlw low(__pdataBANK0+16)
	movwf btemp-1,f
	movlw high(__pidataBANK0)
	movwf btemp,f
	movlw low(__pidataBANK0)
	movwf btemp+1,f
	movlw low(__pdataBANK0)
	movwf fsr,f
	fcall init_ram
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_init
?_init:	; 0 bytes @ 0x0
	global	??_init
??_init:	; 0 bytes @ 0x0
	global	?_running_dot
?_running_dot:	; 0 bytes @ 0x0
	global	?_running_line
?_running_line:	; 0 bytes @ 0x0
	global	?_expand_shrink_square
?_expand_shrink_square:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?_delay_ms
?_delay_ms:	; 0 bytes @ 0x0
	global	?_light_a_dot
?_light_a_dot:	; 0 bytes @ 0x0
	global	?_light_a_row
?_light_a_row:	; 0 bytes @ 0x0
	global	?_choose_num_alphabet
?_choose_num_alphabet:	; 0 bytes @ 0x0
	global	light_a_dot@column
light_a_dot@column:	; 1 bytes @ 0x0
	global	light_a_row@color
light_a_row@color:	; 1 bytes @ 0x0
	global	choose_num_alphabet@num_alp_array
choose_num_alphabet@num_alp_array:	; 1 bytes @ 0x0
	global	delay_ms@ms
delay_ms@ms:	; 4 bytes @ 0x0
	ds	1
	global	??_light_a_row
??_light_a_row:	; 0 bytes @ 0x1
	global	??_choose_num_alphabet
??_choose_num_alphabet:	; 0 bytes @ 0x1
	global	light_a_dot@color
light_a_dot@color:	; 1 bytes @ 0x1
	global	light_a_row@row
light_a_row@row:	; 1 bytes @ 0x1
	ds	1
	global	??_light_a_dot
??_light_a_dot:	; 0 bytes @ 0x2
	global	choose_num_alphabet@num_alp
choose_num_alphabet@num_alp:	; 1 bytes @ 0x2
	ds	1
	global	light_a_dot@row
light_a_dot@row:	; 1 bytes @ 0x3
	ds	1
	global	??_delay_ms
??_delay_ms:	; 0 bytes @ 0x4
	global	?_light_a_column_two_color
?_light_a_column_two_color:	; 0 bytes @ 0x4
	global	light_a_column_two_color@column_pattern
light_a_column_two_color@column_pattern:	; 1 bytes @ 0x4
	ds	1
	global	light_a_column_two_color@color_0
light_a_column_two_color@color_0:	; 1 bytes @ 0x5
	ds	1
	global	light_a_column_two_color@color_1
light_a_column_two_color@color_1:	; 1 bytes @ 0x6
	ds	1
	global	??_light_a_column_two_color
??_light_a_column_two_color:	; 0 bytes @ 0x7
	ds	1
	global	??_running_dot
??_running_dot:	; 0 bytes @ 0x8
	global	??_running_line
??_running_line:	; 0 bytes @ 0x8
	global	?_light_pattern_one_color
?_light_pattern_one_color:	; 0 bytes @ 0x8
	global	light_pattern_one_color@color
light_pattern_one_color@color:	; 1 bytes @ 0x8
	ds	1
	global	??_light_pattern_one_color
??_light_pattern_one_color:	; 0 bytes @ 0x9
	global	light_a_column_two_color@lsb_tester
light_a_column_two_color@lsb_tester:	; 1 bytes @ 0x9
	global	running_line@color
running_line@color:	; 1 bytes @ 0x9
	ds	1
	global	light_pattern_one_color@pattern
light_pattern_one_color@pattern:	; 1 bytes @ 0xA
	global	light_a_column_two_color@column
light_a_column_two_color@column:	; 1 bytes @ 0xA
	global	running_line@i
running_line@i:	; 2 bytes @ 0xA
	ds	1
	global	light_pattern_one_color@i
light_pattern_one_color@i:	; 2 bytes @ 0xB
	global	light_a_column_two_color@i
light_a_column_two_color@i:	; 2 bytes @ 0xB
	ds	1
	global	running_line@i_540
running_line@i_540:	; 2 bytes @ 0xC
	ds	1
	global	?_light_a_number_alphabet
?_light_a_number_alphabet:	; 0 bytes @ 0xD
	global	light_a_number_alphabet@color
light_a_number_alphabet@color:	; 1 bytes @ 0xD
	ds	1
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	??_light_a_number_alphabet
??_light_a_number_alphabet:	; 0 bytes @ 0x0
	global	?_light_pattern_two_color
?_light_pattern_two_color:	; 0 bytes @ 0x0
	global	??_expand_shrink_square
??_expand_shrink_square:	; 0 bytes @ 0x0
	global	light_pattern_two_color@color_0
light_pattern_two_color@color_0:	; 1 bytes @ 0x0
	global	running_dot@color
running_dot@color:	; 1 bytes @ 0x0
	ds	1
	global	light_pattern_two_color@color_1
light_pattern_two_color@color_1:	; 1 bytes @ 0x1
	global	light_a_number_alphabet@num_alp
light_a_number_alphabet@num_alp:	; 1 bytes @ 0x1
	global	running_dot@i
running_dot@i:	; 2 bytes @ 0x1
	ds	1
	global	??_light_pattern_two_color
??_light_pattern_two_color:	; 0 bytes @ 0x2
	global	?_running_string
?_running_string:	; 0 bytes @ 0x2
	global	running_string@color
running_string@color:	; 1 bytes @ 0x2
	global	expand_shrink_square@color
expand_shrink_square@color:	; 1 bytes @ 0x2
	ds	1
	global	??_running_string
??_running_string:	; 0 bytes @ 0x3
	global	running_dot@j
running_dot@j:	; 2 bytes @ 0x3
	global	expand_shrink_square@j
expand_shrink_square@j:	; 2 bytes @ 0x3
	ds	1
	global	running_string@sentence
running_string@sentence:	; 1 bytes @ 0x4
	ds	1
	global	running_string@i
running_string@i:	; 2 bytes @ 0x5
	global	expand_shrink_square@j_557
expand_shrink_square@j_557:	; 2 bytes @ 0x5
	ds	1
	global	light_pattern_two_color@pattern
light_pattern_two_color@pattern:	; 1 bytes @ 0x6
	ds	1
	global	light_pattern_two_color@time
light_pattern_two_color@time:	; 2 bytes @ 0x7
	global	running_string@j
running_string@j:	; 2 bytes @ 0x7
	global	expand_shrink_square@i
expand_shrink_square@i:	; 2 bytes @ 0x7
	ds	2
	global	light_pattern_two_color@i
light_pattern_two_color@i:	; 2 bytes @ 0x9
	global	expand_shrink_square@i_556
expand_shrink_square@i_556:	; 2 bytes @ 0x9
	ds	2
	global	??_main
??_main:	; 0 bytes @ 0xB
	ds	1
;;Data sizes: Strings 7, constant 0, data 72, bss 9, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     14      14
;; BANK0           80     12      37
;; BANK1           80      0      56
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; running_string@sentence	PTR unsigned char  size(1) Largest target is 7
;;		 -> STR_1(CODE[7]), 
;;
;; choose_num_alphabet@num_alp_array	PTR unsigned char  size(1) Largest target is 8
;;		 -> number_alphabet(BANK0[8]), 
;;
;; light_pattern_two_color@pattern	PTR unsigned char  size(1) Largest target is 8
;;		 -> love_shape_pattern_two_color(BANK0[8]), 
;;
;; light_pattern_one_color@pattern	PTR unsigned char  size(1) Largest target is 56
;;		 -> expand_shrink_pattern(BANK1[56]), number_alphabet(BANK0[8]), love_shape_pattern_one_color(BANK0[8]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_light_a_number_alphabet
;;   _main->_running_line
;;   _running_string->_light_a_number_alphabet
;;   _expand_shrink_square->_light_pattern_one_color
;;   _light_a_number_alphabet->_light_pattern_one_color
;;   _light_pattern_two_color->_light_a_column_two_color
;;   _light_pattern_one_color->_delay_ms
;;   _running_line->_delay_ms
;;   _running_dot->_delay_ms
;;   _light_a_column_two_color->_light_a_dot
;;
;; Critical Paths under _main in BANK0
;;
;;   _main->_light_pattern_two_color
;;   _main->_expand_shrink_square
;;   _running_string->_light_a_number_alphabet
;;
;; Critical Paths under _main in BANK1
;;
;;   None.
;;
;; Critical Paths under _main in BANK3
;;
;;   None.
;;
;; Critical Paths under _main in BANK2
;;
;;   None.

;;
;;Main: autosize = 0, tempsize = 1, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 1     1      0   15194
;;                                             11 BANK0      1     1      0
;;                               _init
;;            _light_a_number_alphabet
;;                        _running_dot
;;                       _running_line
;;            _light_pattern_one_color
;;            _light_pattern_two_color
;;                     _running_string
;;               _expand_shrink_square
;; ---------------------------------------------------------------------------------
;; (1) _running_string                                       7     6      1    6760
;;                                              2 BANK0      7     6      1
;;            _light_a_number_alphabet
;; ---------------------------------------------------------------------------------
;; (1) _expand_shrink_square                                11    11      0     472
;;                                              0 BANK0     11    11      0
;;            _light_pattern_one_color
;; ---------------------------------------------------------------------------------
;; (2) _light_a_number_alphabet                              3     2      1    6602
;;                                             13 COMMON     1     0      1
;;                                              0 BANK0      2     2      0
;;                _choose_num_alphabet
;;            _light_pattern_one_color
;; ---------------------------------------------------------------------------------
;; (1) _light_pattern_two_color                             11     9      2     580
;;                                              0 BANK0     11     9      2
;;           _light_a_column_two_color
;; ---------------------------------------------------------------------------------
;; (2) _light_pattern_one_color                              5     4      1     200
;;                                              8 COMMON     5     4      1
;;                           _delay_ms
;; ---------------------------------------------------------------------------------
;; (1) _running_line                                         6     6      0     290
;;                                              8 COMMON     6     6      0
;;                        _light_a_row
;;                           _delay_ms
;; ---------------------------------------------------------------------------------
;; (1) _running_dot                                          7     7      0     290
;;                                              8 COMMON     2     2      0
;;                                              0 BANK0      5     5      0
;;                        _light_a_dot
;;                           _delay_ms
;; ---------------------------------------------------------------------------------
;; (2) _light_a_column_two_color                             9     6      3     378
;;                                              4 COMMON     9     6      3
;;                        _light_a_dot
;; ---------------------------------------------------------------------------------
;; (3) _delay_ms                                             8     4      4      22
;;                                              0 COMMON     8     4      4
;; ---------------------------------------------------------------------------------
;; (3) _choose_num_alphabet                                  3     2      1    6358
;;                                              0 COMMON     3     2      1
;; ---------------------------------------------------------------------------------
;; (2) _light_a_row                                          2     1      1      88
;;                                              0 COMMON     2     1      1
;; ---------------------------------------------------------------------------------
;; (3) _light_a_dot                                          4     2      2     110
;;                                              0 COMMON     4     2      2
;; ---------------------------------------------------------------------------------
;; (1) _init                                                 0     0      0       0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 3
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _init
;;   _light_a_number_alphabet
;;     _choose_num_alphabet
;;     _light_pattern_one_color
;;       _delay_ms
;;   _running_dot
;;     _light_a_dot
;;     _delay_ms
;;   _running_line
;;     _light_a_row
;;     _delay_ms
;;   _light_pattern_one_color
;;     _delay_ms
;;   _light_pattern_two_color
;;     _light_a_column_two_color
;;       _light_a_dot
;;   _running_string
;;     _light_a_number_alphabet
;;       _choose_num_alphabet
;;       _light_pattern_one_color
;;         _delay_ms
;;   _expand_shrink_square
;;     _light_pattern_one_color
;;       _delay_ms
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BANK3               60      0       0       9        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;BANK2               60      0       0      11        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITSFR2              0      0       0       5        0.0%
;;SFR1                 0      0       0       2        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;BANK1               50      0      38       7       70.0%
;;BITBANK1            50      0       0       6        0.0%
;;CODE                 0      0       0       0        0.0%
;;DATA                 0      0      6F      12        0.0%
;;ABS                  0      0      6B       3        0.0%
;;NULL                 0      0       0       0        0.0%
;;STACK                0      0       4       2        0.0%
;;BANK0               50      C      25       5       46.3%
;;BITBANK0            50      0       0       4        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR0              0      0       0       1        0.0%
;;COMMON               E      E       E       1      100.0%
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 27 in file "C:\Users\younce\Documents\Dot Matrix\Dot Matrix.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_init
;;		_light_a_number_alphabet
;;		_running_dot
;;		_running_line
;;		_light_pattern_one_color
;;		_light_pattern_two_color
;;		_running_string
;;		_expand_shrink_square
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\younce\Documents\Dot Matrix\Dot Matrix.c"
	line	27
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 4
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	28
	
l2984:	
;Dot Matrix.c: 28: init();
	fcall	_init
	line	29
;Dot Matrix.c: 29: while(RB1 == 1)
	goto	l863
	
l864:	
	line	31
;Dot Matrix.c: 30: {
;Dot Matrix.c: 31: if(RB0 == 0)
	btfsc	(48/8),(48)&7
	goto	u3171
	goto	u3170
u3171:
	goto	l3010
u3170:
	goto	l866
	line	33
	
l2986:	
;Dot Matrix.c: 32: {
;Dot Matrix.c: 33: while(RB0 == 0);
	goto	l866
	
l867:	
	
l866:	
	btfss	(48/8),(48)&7
	goto	u3181
	goto	u3180
u3181:
	goto	l866
u3180:
	goto	l2988
	
l868:	
	line	34
	
l2988:	
;Dot Matrix.c: 34: mode++;
	movlw	(01h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(_mode),f
	line	35
	
l2990:	
;Dot Matrix.c: 35: if(mode>6)
	movlw	(07h)
	subwf	(_mode),w
	skipc
	goto	u3191
	goto	u3190
u3191:
	goto	l3010
u3190:
	line	37
	
l2992:	
;Dot Matrix.c: 36: {
;Dot Matrix.c: 37: mode = 0;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(_mode)
	goto	l3010
	line	38
	
l869:	
	goto	l3010
	line	39
	
l865:	
	line	40
;Dot Matrix.c: 38: }
;Dot Matrix.c: 39: }
;Dot Matrix.c: 40: switch(mode)
	goto	l3010
	line	42
;Dot Matrix.c: 41: {
;Dot Matrix.c: 42: case 0: light_a_number_alphabet('0',GREEN);
	
l871:	
	
l2994:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(?_light_a_number_alphabet)
	movlw	(030h)
	fcall	_light_a_number_alphabet
	line	43
;Dot Matrix.c: 43: break;
	goto	l863
	line	44
;Dot Matrix.c: 44: case 1: light_a_number_alphabet('1',GREEN);
	
l873:	
	
l2996:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(?_light_a_number_alphabet)
	movlw	(031h)
	fcall	_light_a_number_alphabet
	line	45
;Dot Matrix.c: 45: break;
	goto	l863
	line	46
;Dot Matrix.c: 46: case 2: light_a_number_alphabet('2',GREEN);
	
l874:	
	
l2998:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(?_light_a_number_alphabet)
	movlw	(032h)
	fcall	_light_a_number_alphabet
	line	47
;Dot Matrix.c: 47: break;
	goto	l863
	line	48
;Dot Matrix.c: 48: case 3: light_a_number_alphabet('3',GREEN);
	
l875:	
	
l3000:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(?_light_a_number_alphabet)
	movlw	(033h)
	fcall	_light_a_number_alphabet
	line	49
;Dot Matrix.c: 49: break;
	goto	l863
	line	50
;Dot Matrix.c: 50: case 4: light_a_number_alphabet('4',GREEN);
	
l876:	
	
l3002:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(?_light_a_number_alphabet)
	movlw	(034h)
	fcall	_light_a_number_alphabet
	line	51
;Dot Matrix.c: 51: break;
	goto	l863
	line	52
;Dot Matrix.c: 52: case 5: light_a_number_alphabet('5',GREEN);
	
l877:	
	
l3004:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(?_light_a_number_alphabet)
	movlw	(035h)
	fcall	_light_a_number_alphabet
	line	53
;Dot Matrix.c: 53: break;
	goto	l863
	line	54
;Dot Matrix.c: 54: case 6: light_a_number_alphabet('6',GREEN);
	
l878:	
	
l3006:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(?_light_a_number_alphabet)
	movlw	(036h)
	fcall	_light_a_number_alphabet
	line	55
;Dot Matrix.c: 55: break;
	goto	l863
	line	56
;Dot Matrix.c: 56: default:break;
	
l879:	
	goto	l863
	line	57
	
l3008:	
;Dot Matrix.c: 57: }
	goto	l863
	line	40
	
l870:	
	
l3010:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_mode),w
	; Switch size 1, requested type "space"
; Number of cases is 7, Range of values is 0 to 6
; switch strategies available:
; Name         Bytes Cycles
; simple_byte    22    12 (average)
; direct_byte    40    19 (fixed)
;	Chosen strategy is simple_byte

	xorlw	0^0	; case 0
	skipnz
	goto	l2994
	xorlw	1^0	; case 1
	skipnz
	goto	l2996
	xorlw	2^1	; case 2
	skipnz
	goto	l2998
	xorlw	3^2	; case 3
	skipnz
	goto	l3000
	xorlw	4^3	; case 4
	skipnz
	goto	l3002
	xorlw	5^4	; case 5
	skipnz
	goto	l3004
	xorlw	6^5	; case 6
	skipnz
	goto	l3006
	goto	l863

	line	57
	
l872:	
	line	58
	
l863:	
	line	29
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(49/8),(49)&7
	goto	u3201
	goto	u3200
u3201:
	goto	l864
u3200:
	goto	l881
	
l880:	
	line	59
;Dot Matrix.c: 58: }
;Dot Matrix.c: 59: while(RB1 == 0);
	goto	l881
	
l882:	
	
l881:	
	btfss	(49/8),(49)&7
	goto	u3211
	goto	u3210
u3211:
	goto	l881
u3210:
	goto	l3028
	
l883:	
	goto	l3028
	line	63
;Dot Matrix.c: 63: while(1)
	
l884:	
	line	65
;Dot Matrix.c: 64: {
;Dot Matrix.c: 65: switch(mode)
	goto	l3028
	line	67
;Dot Matrix.c: 66: {
;Dot Matrix.c: 67: case 0: running_dot(GREEN);
	
l886:	
	
l3012:	
	movlw	(0)
	fcall	_running_dot
	line	68
;Dot Matrix.c: 68: break;
	goto	l3028
	line	69
;Dot Matrix.c: 69: case 1: running_line(GREEN);
	
l888:	
	
l3014:	
	movlw	(0)
	fcall	_running_line
	line	70
;Dot Matrix.c: 70: break;
	goto	l3028
	line	71
;Dot Matrix.c: 71: case 2: light_pattern_one_color(love_shape_pattern_one_color,GREEN);
	
l889:	
	
l3016:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(?_light_pattern_one_color)
	movlw	(_love_shape_pattern_one_color)&0ffh
	fcall	_light_pattern_one_color
	line	72
;Dot Matrix.c: 72: break;
	goto	l3028
	line	73
;Dot Matrix.c: 73: case 3: light_pattern_one_color(love_shape_pattern_one_color,GREEN);
	
l890:	
	
l3018:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(?_light_pattern_one_color)
	movlw	(_love_shape_pattern_one_color)&0ffh
	fcall	_light_pattern_one_color
	line	74
;Dot Matrix.c: 74: light_pattern_one_color(love_shape_pattern_one_color,RED);
	clrf	(?_light_pattern_one_color)
	bsf	status,0
	rlf	(?_light_pattern_one_color),f
	movlw	(_love_shape_pattern_one_color)&0ffh
	fcall	_light_pattern_one_color
	line	75
;Dot Matrix.c: 75: break;
	goto	l3028
	line	76
;Dot Matrix.c: 76: case 4: light_pattern_two_color(love_shape_pattern_two_color,RED,GREEN);
	
l891:	
	
l3020:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?_light_pattern_two_color)
	bsf	status,0
	rlf	(?_light_pattern_two_color),f
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	0+(?_light_pattern_two_color)+01h
	movlw	(_love_shape_pattern_two_color)&0ffh
	fcall	_light_pattern_two_color
	line	77
;Dot Matrix.c: 77: break;
	goto	l3028
	line	78
;Dot Matrix.c: 78: case 5: running_string("CYTRON",GREEN);
	
l892:	
	
l3022:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_running_string)
	movlw	((STR_1-__stringbase))&0ffh
	fcall	_running_string
	line	79
;Dot Matrix.c: 79: break;
	goto	l3028
	line	80
;Dot Matrix.c: 80: case 6: expand_shrink_square(GREEN);
	
l893:	
	
l3024:	
	movlw	(0)
	fcall	_expand_shrink_square
	line	81
;Dot Matrix.c: 81: break;
	goto	l3028
	line	82
;Dot Matrix.c: 82: default: break;
	
l894:	
	goto	l3028
	line	83
	
l3026:	
;Dot Matrix.c: 83: }
	goto	l3028
	line	65
	
l885:	
	
l3028:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_mode),w
	; Switch size 1, requested type "space"
; Number of cases is 7, Range of values is 0 to 6
; switch strategies available:
; Name         Bytes Cycles
; simple_byte    22    12 (average)
; direct_byte    40    19 (fixed)
;	Chosen strategy is simple_byte

	xorlw	0^0	; case 0
	skipnz
	goto	l3012
	xorlw	1^0	; case 1
	skipnz
	goto	l3014
	xorlw	2^1	; case 2
	skipnz
	goto	l3016
	xorlw	3^2	; case 3
	skipnz
	goto	l3018
	xorlw	4^3	; case 4
	skipnz
	goto	l3020
	xorlw	5^4	; case 5
	skipnz
	goto	l3022
	xorlw	6^5	; case 6
	skipnz
	goto	l3024
	goto	l3028

	line	83
	
l887:	
	goto	l3028
	line	84
	
l895:	
	line	63
	goto	l3028
	
l896:	
	line	85
	
l897:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_running_string
psect	text337,local,class=CODE,delta=2
global __ptext337
__ptext337:

;; *************** function _running_string *****************
;; Defined at:
;;		line 604 in file "C:\Users\younce\Documents\Dot Matrix\Dot Matrix.c"
;; Parameters:    Size  Location     Type
;;  sentence        1    wreg     PTR unsigned char 
;;		 -> STR_1(7), 
;;  color           1    2[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  sentence        1    4[BANK0 ] PTR unsigned char 
;;		 -> STR_1(7), 
;;  j               2    7[BANK0 ] int 
;;  i               2    5[BANK0 ] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       1       0       0       0
;;      Locals:         0       5       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       7       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_light_a_number_alphabet
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text337
	file	"C:\Users\younce\Documents\Dot Matrix\Dot Matrix.c"
	line	604
	global	__size_of_running_string
	__size_of_running_string	equ	__end_of_running_string-_running_string
	
_running_string:	
	opt	stack 4
; Regs used in _running_string: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
;running_string@sentence stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(running_string@sentence)
	line	605
	
l2966:	
;Dot Matrix.c: 605: for(int i = 0; sentence[i] != '\0'; i++)
	movlw	low(0)
	movwf	(running_string@i)
	movlw	high(0)
	movwf	((running_string@i))+1
	goto	l2982
	line	606
	
l1020:	
	line	607
	
l2968:	
;Dot Matrix.c: 606: {
;Dot Matrix.c: 607: for(int j = 0; j<50; j++)
	movlw	low(0)
	movwf	(running_string@j)
	movlw	high(0)
	movwf	((running_string@j))+1
	
l2970:	
	movf	(running_string@j+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(032h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3145
	movlw	low(032h)
	subwf	(running_string@j),w
u3145:

	skipc
	goto	u3141
	goto	u3140
u3141:
	goto	l2974
u3140:
	goto	l2980
	
l2972:	
	goto	l2980
	line	608
	
l1021:	
	
l2974:	
;Dot Matrix.c: 608: light_a_number_alphabet(sentence[i], color);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(running_string@color),w
	movwf	(??_running_string+0)+0
	movf	(??_running_string+0)+0,w
	movwf	(?_light_a_number_alphabet)
	movf	(running_string@i),w
	addwf	(running_string@sentence),w
	movwf	fsr0
	fcall	stringdir
	fcall	_light_a_number_alphabet
	line	607
	
l2976:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(running_string@j),f
	skipnc
	incf	(running_string@j+1),f
	movlw	high(01h)
	addwf	(running_string@j+1),f
	
l2978:	
	movf	(running_string@j+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(032h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3155
	movlw	low(032h)
	subwf	(running_string@j),w
u3155:

	skipc
	goto	u3151
	goto	u3150
u3151:
	goto	l2974
u3150:
	goto	l2980
	
l1022:	
	line	605
	
l2980:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(running_string@i),f
	skipnc
	incf	(running_string@i+1),f
	movlw	high(01h)
	addwf	(running_string@i+1),f
	goto	l2982
	
l1019:	
	
l2982:	
	movf	(running_string@i),w
	addwf	(running_string@sentence),w
	movwf	fsr0
	fcall	stringdir
	iorlw	0
	skipz
	goto	u3161
	goto	u3160
u3161:
	goto	l2968
u3160:
	goto	l1024
	
l1023:	
	line	610
	
l1024:	
	return
	opt stack 0
GLOBAL	__end_of_running_string
	__end_of_running_string:
;; =============== function _running_string ends ============

	signat	_running_string,8312
	global	_expand_shrink_square
psect	text338,local,class=CODE,delta=2
global __ptext338
__ptext338:

;; *************** function _expand_shrink_square *****************
;; Defined at:
;;		line 613 in file "C:\Users\younce\Documents\Dot Matrix\Dot Matrix.c"
;; Parameters:    Size  Location     Type
;;  color           1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  color           1    2[BANK0 ] unsigned char 
;;  j               2    5[BANK0 ] int 
;;  j               2    3[BANK0 ] int 
;;  i               2    9[BANK0 ] int 
;;  i               2    7[BANK0 ] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       9       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0      11       0       0       0
;;Total ram usage:       11 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_light_pattern_one_color
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text338
	file	"C:\Users\younce\Documents\Dot Matrix\Dot Matrix.c"
	line	613
	global	__size_of_expand_shrink_square
	__size_of_expand_shrink_square	equ	__end_of_expand_shrink_square-_expand_shrink_square
	
_expand_shrink_square:	
	opt	stack 5
; Regs used in _expand_shrink_square: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
;expand_shrink_square@color stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(expand_shrink_square@color)
	line	614
	
l2922:	
;Dot Matrix.c: 614: for(int i = 0; i<7; i++)
	movlw	low(0)
	movwf	(expand_shrink_square@i)
	movlw	high(0)
	movwf	((expand_shrink_square@i))+1
	
l2924:	
	movf	(expand_shrink_square@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(07h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3045
	movlw	low(07h)
	subwf	(expand_shrink_square@i),w
u3045:

	skipc
	goto	u3041
	goto	u3040
u3041:
	goto	l2928
u3040:
	goto	l2944
	
l2926:	
	goto	l2944
	line	615
	
l1027:	
	
l2928:	
;Dot Matrix.c: 615: for(int j = 0; j<5; j++)
	movlw	low(0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(expand_shrink_square@j)
	movlw	high(0)
	movwf	((expand_shrink_square@j))+1
	
l2930:	
	movf	(expand_shrink_square@j+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(05h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3055
	movlw	low(05h)
	subwf	(expand_shrink_square@j),w
u3055:

	skipc
	goto	u3051
	goto	u3050
u3051:
	goto	l2934
u3050:
	goto	l2940
	
l2932:	
	goto	l2940
	line	616
	
l1029:	
	
l2934:	
;Dot Matrix.c: 616: light_pattern_one_color(expand_shrink_pattern[i],color);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(expand_shrink_square@color),w
	movwf	(??_expand_shrink_square+0)+0
	movf	(??_expand_shrink_square+0)+0,w
	movwf	(?_light_pattern_one_color)
	movf	(expand_shrink_square@i),w
	movwf	(??_expand_shrink_square+1)+0
	movlw	(03h)-1
u3065:
	clrc
	rlf	(??_expand_shrink_square+1)+0,f
	addlw	-1
	skipz
	goto	u3065
	clrc
	rlf	(??_expand_shrink_square+1)+0,w
	addlw	_expand_shrink_pattern&0ffh
	fcall	_light_pattern_one_color
	line	615
	
l2936:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(expand_shrink_square@j),f
	skipnc
	incf	(expand_shrink_square@j+1),f
	movlw	high(01h)
	addwf	(expand_shrink_square@j+1),f
	
l2938:	
	movf	(expand_shrink_square@j+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(05h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3075
	movlw	low(05h)
	subwf	(expand_shrink_square@j),w
u3075:

	skipc
	goto	u3071
	goto	u3070
u3071:
	goto	l2934
u3070:
	goto	l2940
	
l1030:	
	line	614
	
l2940:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(expand_shrink_square@i),f
	skipnc
	incf	(expand_shrink_square@i+1),f
	movlw	high(01h)
	addwf	(expand_shrink_square@i+1),f
	
l2942:	
	movf	(expand_shrink_square@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(07h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3085
	movlw	low(07h)
	subwf	(expand_shrink_square@i),w
u3085:

	skipc
	goto	u3081
	goto	u3080
u3081:
	goto	l2928
u3080:
	goto	l2944
	
l1028:	
	line	618
	
l2944:	
;Dot Matrix.c: 618: for(int i = 6; i>=0; i--)
	movlw	low(06h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(expand_shrink_square@i_556)
	movlw	high(06h)
	movwf	((expand_shrink_square@i_556))+1
	
l2946:	
	btfss	(expand_shrink_square@i_556+1),7
	goto	u3091
	goto	u3090
u3091:
	goto	l2950
u3090:
	goto	l1035
	
l2948:	
	goto	l1035
	line	619
	
l1031:	
	
l2950:	
;Dot Matrix.c: 619: for(int j = 0; j<5; j++)
	movlw	low(0)
	movwf	(expand_shrink_square@j_557)
	movlw	high(0)
	movwf	((expand_shrink_square@j_557))+1
	
l2952:	
	movf	(expand_shrink_square@j_557+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(05h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3105
	movlw	low(05h)
	subwf	(expand_shrink_square@j_557),w
u3105:

	skipc
	goto	u3101
	goto	u3100
u3101:
	goto	l2956
u3100:
	goto	l2962
	
l2954:	
	goto	l2962
	line	620
	
l1033:	
	
l2956:	
;Dot Matrix.c: 620: light_pattern_one_color(expand_shrink_pattern[i],color);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(expand_shrink_square@color),w
	movwf	(??_expand_shrink_square+0)+0
	movf	(??_expand_shrink_square+0)+0,w
	movwf	(?_light_pattern_one_color)
	movf	(expand_shrink_square@i_556),w
	movwf	(??_expand_shrink_square+1)+0
	movlw	(03h)-1
u3115:
	clrc
	rlf	(??_expand_shrink_square+1)+0,f
	addlw	-1
	skipz
	goto	u3115
	clrc
	rlf	(??_expand_shrink_square+1)+0,w
	addlw	_expand_shrink_pattern&0ffh
	fcall	_light_pattern_one_color
	line	619
	
l2958:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(expand_shrink_square@j_557),f
	skipnc
	incf	(expand_shrink_square@j_557+1),f
	movlw	high(01h)
	addwf	(expand_shrink_square@j_557+1),f
	
l2960:	
	movf	(expand_shrink_square@j_557+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(05h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3125
	movlw	low(05h)
	subwf	(expand_shrink_square@j_557),w
u3125:

	skipc
	goto	u3121
	goto	u3120
u3121:
	goto	l2956
u3120:
	goto	l2962
	
l1034:	
	line	618
	
l2962:	
	movlw	low(-1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(expand_shrink_square@i_556),f
	skipnc
	incf	(expand_shrink_square@i_556+1),f
	movlw	high(-1)
	addwf	(expand_shrink_square@i_556+1),f
	
l2964:	
	btfss	(expand_shrink_square@i_556+1),7
	goto	u3131
	goto	u3130
u3131:
	goto	l2950
u3130:
	goto	l1035
	
l1032:	
	line	621
	
l1035:	
	return
	opt stack 0
GLOBAL	__end_of_expand_shrink_square
	__end_of_expand_shrink_square:
;; =============== function _expand_shrink_square ends ============

	signat	_expand_shrink_square,4216
	global	_light_a_number_alphabet
psect	text339,local,class=CODE,delta=2
global __ptext339
__ptext339:

;; *************** function _light_a_number_alphabet *****************
;; Defined at:
;;		line 598 in file "C:\Users\younce\Documents\Dot Matrix\Dot Matrix.c"
;; Parameters:    Size  Location     Type
;;  num_alp         1    wreg     unsigned char 
;;  color           1   13[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  num_alp         1    1[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         1       0       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         1       2       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_choose_num_alphabet
;;		_light_pattern_one_color
;; This function is called by:
;;		_main
;;		_running_string
;; This function uses a non-reentrant model
;;
psect	text339
	file	"C:\Users\younce\Documents\Dot Matrix\Dot Matrix.c"
	line	598
	global	__size_of_light_a_number_alphabet
	__size_of_light_a_number_alphabet	equ	__end_of_light_a_number_alphabet-_light_a_number_alphabet
	
_light_a_number_alphabet:	
	opt	stack 4
; Regs used in _light_a_number_alphabet: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
;light_a_number_alphabet@num_alp stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(light_a_number_alphabet@num_alp)
	line	599
	
l2918:	
;Dot Matrix.c: 599: choose_num_alphabet(num_alp,number_alphabet);
	movlw	(_number_alphabet)&0ffh
	movwf	(??_light_a_number_alphabet+0)+0
	movf	(??_light_a_number_alphabet+0)+0,w
	movwf	(?_choose_num_alphabet)
	movf	(light_a_number_alphabet@num_alp),w
	fcall	_choose_num_alphabet
	line	600
	
l2920:	
;Dot Matrix.c: 600: light_pattern_one_color(number_alphabet,color);
	movf	(light_a_number_alphabet@color),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_light_a_number_alphabet+0)+0
	movf	(??_light_a_number_alphabet+0)+0,w
	movwf	(?_light_pattern_one_color)
	movlw	(_number_alphabet)&0ffh
	fcall	_light_pattern_one_color
	line	601
	
l1016:	
	return
	opt stack 0
GLOBAL	__end_of_light_a_number_alphabet
	__end_of_light_a_number_alphabet:
;; =============== function _light_a_number_alphabet ends ============

	signat	_light_a_number_alphabet,8312
	global	_light_pattern_two_color
psect	text340,local,class=CODE,delta=2
global __ptext340
__ptext340:

;; *************** function _light_pattern_two_color *****************
;; Defined at:
;;		line 211 in file "C:\Users\younce\Documents\Dot Matrix\Dot Matrix.c"
;; Parameters:    Size  Location     Type
;;  pattern         1    wreg     PTR unsigned char 
;;		 -> love_shape_pattern_two_color(8), 
;;  color_0         1    0[BANK0 ] unsigned char 
;;  color_1         1    1[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  pattern         1    6[BANK0 ] PTR unsigned char 
;;		 -> love_shape_pattern_two_color(8), 
;;  time            2    7[BANK0 ] int 
;;  i               2    9[BANK0 ] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       2       0       0       0
;;      Locals:         0       5       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0      11       0       0       0
;;Total ram usage:       11 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_light_a_column_two_color
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text340
	file	"C:\Users\younce\Documents\Dot Matrix\Dot Matrix.c"
	line	211
	global	__size_of_light_pattern_two_color
	__size_of_light_pattern_two_color	equ	__end_of_light_pattern_two_color-_light_pattern_two_color
	
_light_pattern_two_color:	
	opt	stack 5
; Regs used in _light_pattern_two_color: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
;light_pattern_two_color@pattern stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(light_pattern_two_color@pattern)
	line	212
	
l2896:	
;Dot Matrix.c: 212: for(int i = 0; i<8; i++)
	movlw	low(0)
	movwf	(light_pattern_two_color@i)
	movlw	high(0)
	movwf	((light_pattern_two_color@i))+1
	
l2898:	
	movf	(light_pattern_two_color@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(08h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3005
	movlw	low(08h)
	subwf	(light_pattern_two_color@i),w
u3005:

	skipc
	goto	u3001
	goto	u3000
u3001:
	goto	l2902
u3000:
	goto	l957
	
l2900:	
	goto	l957
	line	213
	
l953:	
	line	214
	
l2902:	
;Dot Matrix.c: 213: {
;Dot Matrix.c: 214: for(int time = 0; time<5; time++)
	movlw	low(0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(light_pattern_two_color@time)
	movlw	high(0)
	movwf	((light_pattern_two_color@time))+1
	
l2904:	
	movf	(light_pattern_two_color@time+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(05h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3015
	movlw	low(05h)
	subwf	(light_pattern_two_color@time),w
u3015:

	skipc
	goto	u3011
	goto	u3010
u3011:
	goto	l2908
u3010:
	goto	l2914
	
l2906:	
	goto	l2914
	line	215
	
l955:	
	
l2908:	
;Dot Matrix.c: 215: light_a_column_two_color(i,pattern[i],color_0,color_1);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(light_pattern_two_color@i),w
	addwf	(light_pattern_two_color@pattern),w
	movwf	(??_light_pattern_two_color+0)+0
	movf	0+(??_light_pattern_two_color+0)+0,w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(??_light_pattern_two_color+1)+0
	movf	(??_light_pattern_two_color+1)+0,w
	movwf	(?_light_a_column_two_color)
	movf	(light_pattern_two_color@color_0),w
	movwf	(??_light_pattern_two_color+2)+0
	movf	(??_light_pattern_two_color+2)+0,w
	movwf	0+(?_light_a_column_two_color)+01h
	movf	(light_pattern_two_color@color_1),w
	movwf	(??_light_pattern_two_color+3)+0
	movf	(??_light_pattern_two_color+3)+0,w
	movwf	0+(?_light_a_column_two_color)+02h
	movf	(light_pattern_two_color@i),w
	fcall	_light_a_column_two_color
	line	214
	
l2910:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(light_pattern_two_color@time),f
	skipnc
	incf	(light_pattern_two_color@time+1),f
	movlw	high(01h)
	addwf	(light_pattern_two_color@time+1),f
	
l2912:	
	movf	(light_pattern_two_color@time+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(05h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3025
	movlw	low(05h)
	subwf	(light_pattern_two_color@time),w
u3025:

	skipc
	goto	u3021
	goto	u3020
u3021:
	goto	l2908
u3020:
	goto	l2914
	
l956:	
	line	212
	
l2914:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(light_pattern_two_color@i),f
	skipnc
	incf	(light_pattern_two_color@i+1),f
	movlw	high(01h)
	addwf	(light_pattern_two_color@i+1),f
	
l2916:	
	movf	(light_pattern_two_color@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(08h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3035
	movlw	low(08h)
	subwf	(light_pattern_two_color@i),w
u3035:

	skipc
	goto	u3031
	goto	u3030
u3031:
	goto	l2902
u3030:
	goto	l957
	
l954:	
	line	217
	
l957:	
	return
	opt stack 0
GLOBAL	__end_of_light_pattern_two_color
	__end_of_light_pattern_two_color:
;; =============== function _light_pattern_two_color ends ============

	signat	_light_pattern_two_color,12408
	global	_light_pattern_one_color
psect	text341,local,class=CODE,delta=2
global __ptext341
__ptext341:

;; *************** function _light_pattern_one_color *****************
;; Defined at:
;;		line 173 in file "C:\Users\younce\Documents\Dot Matrix\Dot Matrix.c"
;; Parameters:    Size  Location     Type
;;  pattern         1    wreg     PTR unsigned char 
;;		 -> expand_shrink_pattern(56), number_alphabet(8), love_shape_pattern_one_color(8), 
;;  color           1    8[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  pattern         1   10[COMMON] PTR unsigned char 
;;		 -> expand_shrink_pattern(56), number_alphabet(8), love_shape_pattern_one_color(8), 
;;  i               2   11[COMMON] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         1       0       0       0       0
;;      Locals:         3       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         5       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_delay_ms
;; This function is called by:
;;		_main
;;		_light_a_number_alphabet
;;		_expand_shrink_square
;; This function uses a non-reentrant model
;;
psect	text341
	file	"C:\Users\younce\Documents\Dot Matrix\Dot Matrix.c"
	line	173
	global	__size_of_light_pattern_one_color
	__size_of_light_pattern_one_color	equ	__end_of_light_pattern_one_color-_light_pattern_one_color
	
_light_pattern_one_color:	
	opt	stack 5
; Regs used in _light_pattern_one_color: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
;light_pattern_one_color@pattern stored from wreg
	movwf	(light_pattern_one_color@pattern)
	line	174
	
l2870:	
;Dot Matrix.c: 174: for(int i = 0; i<8 ; i++)
	movlw	low(0)
	movwf	(light_pattern_one_color@i)
	movlw	high(0)
	movwf	((light_pattern_one_color@i))+1
	
l2872:	
	movf	(light_pattern_one_color@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(08h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2965
	movlw	low(08h)
	subwf	(light_pattern_one_color@i),w
u2965:

	skipc
	goto	u2961
	goto	u2960
u2961:
	goto	l2876
u2960:
	goto	l943
	
l2874:	
	goto	l943
	line	175
	
l938:	
	line	176
	
l2876:	
;Dot Matrix.c: 175: {
;Dot Matrix.c: 176: PORTD = pattern[7-i];
	decf	(light_pattern_one_color@i),w
	xorlw	0ffh
	addlw	07h
	addwf	(light_pattern_one_color@pattern),w
	movwf	(??_light_pattern_one_color+0)+0
	movf	0+(??_light_pattern_one_color+0)+0,w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	177
	
l2878:	
;Dot Matrix.c: 177: if(color == GREEN)
	movf	(light_pattern_one_color@color),f
	skipz
	goto	u2971
	goto	u2970
u2971:
	goto	l2884
u2970:
	line	179
	
l2880:	
;Dot Matrix.c: 178: {
;Dot Matrix.c: 179: PORTC = 0;
	clrf	(7)	;volatile
	line	180
	
l2882:	
;Dot Matrix.c: 180: PORTA = 0b00001000 | i;
	movf	(light_pattern_one_color@i),w
	iorlw	08h
	movwf	(5)	;volatile
	line	181
;Dot Matrix.c: 181: }
	goto	l2890
	line	182
	
l940:	
	
l2884:	
;Dot Matrix.c: 182: else if(color == RED)
	movf	(light_pattern_one_color@color),w
	xorlw	01h
	skipz
	goto	u2981
	goto	u2980
u2981:
	goto	l2890
u2980:
	line	184
	
l2886:	
;Dot Matrix.c: 183: {
;Dot Matrix.c: 184: PORTA = 0;
	clrf	(5)	;volatile
	line	185
	
l2888:	
;Dot Matrix.c: 185: PORTC = 0b00001000 | i;
	movf	(light_pattern_one_color@i),w
	iorlw	08h
	movwf	(7)	;volatile
	goto	l2890
	line	186
	
l942:	
	goto	l2890
	line	187
	
l941:	
	
l2890:	
;Dot Matrix.c: 186: }
;Dot Matrix.c: 187: delay_ms(1);
	movlw	0
	movwf	(?_delay_ms+3)
	movlw	0
	movwf	(?_delay_ms+2)
	movlw	0
	movwf	(?_delay_ms+1)
	movlw	01h
	movwf	(?_delay_ms)

	fcall	_delay_ms
	line	174
	
l2892:	
	movlw	low(01h)
	addwf	(light_pattern_one_color@i),f
	skipnc
	incf	(light_pattern_one_color@i+1),f
	movlw	high(01h)
	addwf	(light_pattern_one_color@i+1),f
	
l2894:	
	movf	(light_pattern_one_color@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(08h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2995
	movlw	low(08h)
	subwf	(light_pattern_one_color@i),w
u2995:

	skipc
	goto	u2991
	goto	u2990
u2991:
	goto	l2876
u2990:
	goto	l943
	
l939:	
	line	189
	
l943:	
	return
	opt stack 0
GLOBAL	__end_of_light_pattern_one_color
	__end_of_light_pattern_one_color:
;; =============== function _light_pattern_one_color ends ============

	signat	_light_pattern_one_color,8312
	global	_running_line
psect	text342,local,class=CODE,delta=2
global __ptext342
__ptext342:

;; *************** function _running_line *****************
;; Defined at:
;;		line 232 in file "C:\Users\younce\Documents\Dot Matrix\Dot Matrix.c"
;; Parameters:    Size  Location     Type
;;  color           1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  color           1    9[COMMON] unsigned char 
;;  i               2   12[COMMON] int 
;;  i               2   10[COMMON] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         5       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_light_a_row
;;		_delay_ms
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text342
	file	"C:\Users\younce\Documents\Dot Matrix\Dot Matrix.c"
	line	232
	global	__size_of_running_line
	__size_of_running_line	equ	__end_of_running_line-_running_line
	
_running_line:	
	opt	stack 6
; Regs used in _running_line: [wreg+status,2+status,0+btemp+1+pclath+cstack]
;running_line@color stored from wreg
	movwf	(running_line@color)
	line	233
	
l2846:	
;Dot Matrix.c: 233: for(int i = 0; i<8; i++)
	movlw	low(0)
	movwf	(running_line@i)
	movlw	high(0)
	movwf	((running_line@i))+1
	
l2848:	
	movf	(running_line@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(08h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2925
	movlw	low(08h)
	subwf	(running_line@i),w
u2925:

	skipc
	goto	u2921
	goto	u2920
u2921:
	goto	l2852
u2920:
	goto	l2858
	
l2850:	
	goto	l2858
	line	234
	
l967:	
	line	235
	
l2852:	
;Dot Matrix.c: 234: {
;Dot Matrix.c: 235: light_a_row(i,color);
	movf	(running_line@color),w
	movwf	(??_running_line+0)+0
	movf	(??_running_line+0)+0,w
	movwf	(?_light_a_row)
	movf	(running_line@i),w
	fcall	_light_a_row
	line	236
;Dot Matrix.c: 236: delay_ms(100);
	movlw	0
	movwf	(?_delay_ms+3)
	movlw	0
	movwf	(?_delay_ms+2)
	movlw	0
	movwf	(?_delay_ms+1)
	movlw	064h
	movwf	(?_delay_ms)

	fcall	_delay_ms
	line	233
	
l2854:	
	movlw	low(01h)
	addwf	(running_line@i),f
	skipnc
	incf	(running_line@i+1),f
	movlw	high(01h)
	addwf	(running_line@i+1),f
	
l2856:	
	movf	(running_line@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(08h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2935
	movlw	low(08h)
	subwf	(running_line@i),w
u2935:

	skipc
	goto	u2931
	goto	u2930
u2931:
	goto	l2852
u2930:
	goto	l2858
	
l968:	
	line	239
	
l2858:	
;Dot Matrix.c: 237: }
;Dot Matrix.c: 239: for(int i = 7; i>=0; i--)
	movlw	low(07h)
	movwf	(running_line@i_540)
	movlw	high(07h)
	movwf	((running_line@i_540))+1
	
l2860:	
	btfss	(running_line@i_540+1),7
	goto	u2941
	goto	u2940
u2941:
	goto	l2864
u2940:
	goto	l971
	
l2862:	
	goto	l971
	line	240
	
l969:	
	line	241
	
l2864:	
;Dot Matrix.c: 240: {
;Dot Matrix.c: 241: light_a_row(i,color);
	movf	(running_line@color),w
	movwf	(??_running_line+0)+0
	movf	(??_running_line+0)+0,w
	movwf	(?_light_a_row)
	movf	(running_line@i_540),w
	fcall	_light_a_row
	line	242
;Dot Matrix.c: 242: delay_ms(100);
	movlw	0
	movwf	(?_delay_ms+3)
	movlw	0
	movwf	(?_delay_ms+2)
	movlw	0
	movwf	(?_delay_ms+1)
	movlw	064h
	movwf	(?_delay_ms)

	fcall	_delay_ms
	line	239
	
l2866:	
	movlw	low(-1)
	addwf	(running_line@i_540),f
	skipnc
	incf	(running_line@i_540+1),f
	movlw	high(-1)
	addwf	(running_line@i_540+1),f
	
l2868:	
	btfss	(running_line@i_540+1),7
	goto	u2951
	goto	u2950
u2951:
	goto	l2864
u2950:
	goto	l971
	
l970:	
	line	244
	
l971:	
	return
	opt stack 0
GLOBAL	__end_of_running_line
	__end_of_running_line:
;; =============== function _running_line ends ============

	signat	_running_line,4216
	global	_running_dot
psect	text343,local,class=CODE,delta=2
global __ptext343
__ptext343:

;; *************** function _running_dot *****************
;; Defined at:
;;		line 220 in file "C:\Users\younce\Documents\Dot Matrix\Dot Matrix.c"
;; Parameters:    Size  Location     Type
;;  color           1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  color           1    0[BANK0 ] unsigned char 
;;  j               2    3[BANK0 ] int 
;;  i               2    1[BANK0 ] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       5       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         2       5       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_light_a_dot
;;		_delay_ms
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text343
	file	"C:\Users\younce\Documents\Dot Matrix\Dot Matrix.c"
	line	220
	global	__size_of_running_dot
	__size_of_running_dot	equ	__end_of_running_dot-_running_dot
	
_running_dot:	
	opt	stack 6
; Regs used in _running_dot: [wreg+status,2+status,0+btemp+1+pclath+cstack]
;running_dot@color stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(running_dot@color)
	line	221
	
l2824:	
;Dot Matrix.c: 221: for(int i = 0; i<8; i++)
	movlw	low(0)
	movwf	(running_dot@i)
	movlw	high(0)
	movwf	((running_dot@i))+1
	
l2826:	
	movf	(running_dot@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(08h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2885
	movlw	low(08h)
	subwf	(running_dot@i),w
u2885:

	skipc
	goto	u2881
	goto	u2880
u2881:
	goto	l2830
u2880:
	goto	l964
	
l2828:	
	goto	l964
	line	222
	
l960:	
	line	223
	
l2830:	
;Dot Matrix.c: 222: {
;Dot Matrix.c: 223: for(int j = 0; j<8; j++)
	movlw	low(0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(running_dot@j)
	movlw	high(0)
	movwf	((running_dot@j))+1
	
l2832:	
	movf	(running_dot@j+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(08h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2895
	movlw	low(08h)
	subwf	(running_dot@j),w
u2895:

	skipc
	goto	u2891
	goto	u2890
u2891:
	goto	l2836
u2890:
	goto	l2842
	
l2834:	
	goto	l2842
	line	224
	
l962:	
	line	225
	
l2836:	
;Dot Matrix.c: 224: {
;Dot Matrix.c: 225: light_a_dot(i,j,color);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(running_dot@j),w
	movwf	(??_running_dot+0)+0
	movf	(??_running_dot+0)+0,w
	movwf	(?_light_a_dot)
	movf	(running_dot@color),w
	movwf	(??_running_dot+1)+0
	movf	(??_running_dot+1)+0,w
	movwf	0+(?_light_a_dot)+01h
	movf	(running_dot@i),w
	fcall	_light_a_dot
	line	226
;Dot Matrix.c: 226: delay_ms(50);
	movlw	0
	movwf	(?_delay_ms+3)
	movlw	0
	movwf	(?_delay_ms+2)
	movlw	0
	movwf	(?_delay_ms+1)
	movlw	032h
	movwf	(?_delay_ms)

	fcall	_delay_ms
	line	223
	
l2838:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(running_dot@j),f
	skipnc
	incf	(running_dot@j+1),f
	movlw	high(01h)
	addwf	(running_dot@j+1),f
	
l2840:	
	movf	(running_dot@j+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(08h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2905
	movlw	low(08h)
	subwf	(running_dot@j),w
u2905:

	skipc
	goto	u2901
	goto	u2900
u2901:
	goto	l2836
u2900:
	goto	l2842
	
l963:	
	line	221
	
l2842:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(running_dot@i),f
	skipnc
	incf	(running_dot@i+1),f
	movlw	high(01h)
	addwf	(running_dot@i+1),f
	
l2844:	
	movf	(running_dot@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(08h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2915
	movlw	low(08h)
	subwf	(running_dot@i),w
u2915:

	skipc
	goto	u2911
	goto	u2910
u2911:
	goto	l2830
u2910:
	goto	l964
	
l961:	
	line	229
	
l964:	
	return
	opt stack 0
GLOBAL	__end_of_running_dot
	__end_of_running_dot:
;; =============== function _running_dot ends ============

	signat	_running_dot,4216
	global	_light_a_column_two_color
psect	text344,local,class=CODE,delta=2
global __ptext344
__ptext344:

;; *************** function _light_a_column_two_color *****************
;; Defined at:
;;		line 192 in file "C:\Users\younce\Documents\Dot Matrix\Dot Matrix.c"
;; Parameters:    Size  Location     Type
;;  column          1    wreg     unsigned char 
;;  column_patte    1    4[COMMON] unsigned char 
;;  color_0         1    5[COMMON] unsigned char 
;;  color_1         1    6[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  column          1   10[COMMON] unsigned char 
;;  i               2   11[COMMON] int 
;;  lsb_tester      1    9[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         3       0       0       0       0
;;      Locals:         4       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         9       0       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_light_a_dot
;; This function is called by:
;;		_light_pattern_two_color
;; This function uses a non-reentrant model
;;
psect	text344
	file	"C:\Users\younce\Documents\Dot Matrix\Dot Matrix.c"
	line	192
	global	__size_of_light_a_column_two_color
	__size_of_light_a_column_two_color	equ	__end_of_light_a_column_two_color-_light_a_column_two_color
	
_light_a_column_two_color:	
	opt	stack 5
; Regs used in _light_a_column_two_color: [wreg+status,2+status,0+pclath+cstack]
;light_a_column_two_color@column stored from wreg
	movwf	(light_a_column_two_color@column)
	line	193
	
l2804:	
;Dot Matrix.c: 193: char lsb_tester = 0;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(light_a_column_two_color@lsb_tester)
	line	194
;Dot Matrix.c: 194: PORTD = 1<<column;
	movlw	(01h)
	movwf	(??_light_a_column_two_color+0)+0
	incf	(light_a_column_two_color@column),w
	goto	u2834
u2835:
	clrc
	rlf	(??_light_a_column_two_color+0)+0,f
u2834:
	addlw	-1
	skipz
	goto	u2835
	movf	0+(??_light_a_column_two_color+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	195
	
l2806:	
;Dot Matrix.c: 195: for(int i = 7; i>=0; i--)
	movlw	low(07h)
	movwf	(light_a_column_two_color@i)
	movlw	high(07h)
	movwf	((light_a_column_two_color@i))+1
	
l2808:	
	btfss	(light_a_column_two_color@i+1),7
	goto	u2841
	goto	u2840
u2841:
	goto	l2812
u2840:
	goto	l950
	
l2810:	
	goto	l950
	line	196
	
l946:	
	line	197
	
l2812:	
;Dot Matrix.c: 196: {
;Dot Matrix.c: 197: lsb_tester = (column_pattern >> i) & 0x01;
	movf	(light_a_column_two_color@column_pattern),w
	movwf	(??_light_a_column_two_color+0)+0
	incf	(light_a_column_two_color@i),w
	goto	u2854
u2855:
	clrc
	rrf	(??_light_a_column_two_color+0)+0,f
u2854:
	addlw	-1
	skipz
	goto	u2855
	movf	0+(??_light_a_column_two_color+0)+0,w
	andlw	01h
	movwf	(??_light_a_column_two_color+1)+0
	movf	(??_light_a_column_two_color+1)+0,w
	movwf	(light_a_column_two_color@lsb_tester)
	line	198
	
l2814:	
;Dot Matrix.c: 198: if(lsb_tester)
	movf	(light_a_column_two_color@lsb_tester),w
	skipz
	goto	u2860
	goto	l2818
u2860:
	line	200
	
l2816:	
;Dot Matrix.c: 199: {
;Dot Matrix.c: 200: light_a_dot(i,column,color_1);
	movf	(light_a_column_two_color@column),w
	movwf	(??_light_a_column_two_color+0)+0
	movf	(??_light_a_column_two_color+0)+0,w
	movwf	(?_light_a_dot)
	movf	(light_a_column_two_color@color_1),w
	movwf	(??_light_a_column_two_color+1)+0
	movf	(??_light_a_column_two_color+1)+0,w
	movwf	0+(?_light_a_dot)+01h
	movf	(light_a_column_two_color@i),w
	fcall	_light_a_dot
	line	201
;Dot Matrix.c: 201: }
	goto	l2820
	line	203
	
l948:	
	line	205
	
l2818:	
;Dot Matrix.c: 203: else
;Dot Matrix.c: 204: {
;Dot Matrix.c: 205: light_a_dot(i,column,color_0);
	movf	(light_a_column_two_color@column),w
	movwf	(??_light_a_column_two_color+0)+0
	movf	(??_light_a_column_two_color+0)+0,w
	movwf	(?_light_a_dot)
	movf	(light_a_column_two_color@color_0),w
	movwf	(??_light_a_column_two_color+1)+0
	movf	(??_light_a_column_two_color+1)+0,w
	movwf	0+(?_light_a_dot)+01h
	movf	(light_a_column_two_color@i),w
	fcall	_light_a_dot
	goto	l2820
	line	206
	
l949:	
	line	195
	
l2820:	
	movlw	low(-1)
	addwf	(light_a_column_two_color@i),f
	skipnc
	incf	(light_a_column_two_color@i+1),f
	movlw	high(-1)
	addwf	(light_a_column_two_color@i+1),f
	
l2822:	
	btfss	(light_a_column_two_color@i+1),7
	goto	u2871
	goto	u2870
u2871:
	goto	l2812
u2870:
	goto	l950
	
l947:	
	line	208
	
l950:	
	return
	opt stack 0
GLOBAL	__end_of_light_a_column_two_color
	__end_of_light_a_column_two_color:
;; =============== function _light_a_column_two_color ends ============

	signat	_light_a_column_two_color,16504
	global	_delay_ms
psect	text345,local,class=CODE,delta=2
global __ptext345
__ptext345:

;; *************** function _delay_ms *****************
;; Defined at:
;;		line 106 in file "C:\Users\younce\Documents\Dot Matrix\Dot Matrix.c"
;; Parameters:    Size  Location     Type
;;  ms              4    0[COMMON] unsigned long 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          4       0       0       0       0
;;      Totals:         8       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_light_pattern_one_color
;;		_running_dot
;;		_running_line
;; This function uses a non-reentrant model
;;
psect	text345
	file	"C:\Users\younce\Documents\Dot Matrix\Dot Matrix.c"
	line	106
	global	__size_of_delay_ms
	__size_of_delay_ms	equ	__end_of_delay_ms-_delay_ms
	
_delay_ms:	
	opt	stack 5
; Regs used in _delay_ms: [wreg]
	line	107
	
l2800:	
;Dot Matrix.c: 107: while(ms--)
	goto	l903
	
l904:	
	line	109
	
l2802:	
;Dot Matrix.c: 108: {
;Dot Matrix.c: 109: _delay((unsigned long)((1)*(20000000/4000.0)));
	opt asmopt_off
movlw	7
movwf	((??_delay_ms+0)+0+1),f
	movlw	125
movwf	((??_delay_ms+0)+0),f
u3227:
	decfsz	((??_delay_ms+0)+0),f
	goto	u3227
	decfsz	((??_delay_ms+0)+0+1),f
	goto	u3227
opt asmopt_on

	line	110
	
l903:	
	line	107
	movlw	01h
	movwf	((??_delay_ms+0)+0)
	movlw	0
	movwf	((??_delay_ms+0)+0+1)
	movlw	0
	movwf	((??_delay_ms+0)+0+2)
	movlw	0
	movwf	((??_delay_ms+0)+0+3)
	movf	0+(??_delay_ms+0)+0,w
	subwf	(delay_ms@ms),f
	movf	1+(??_delay_ms+0)+0,w
	skipc
	incfsz	1+(??_delay_ms+0)+0,w
	goto	u2815
	goto	u2816
u2815:
	subwf	(delay_ms@ms+1),f
u2816:
	movf	2+(??_delay_ms+0)+0,w
	skipc
	incfsz	2+(??_delay_ms+0)+0,w
	goto	u2817
	goto	u2818
u2817:
	subwf	(delay_ms@ms+2),f
u2818:
	movf	3+(??_delay_ms+0)+0,w
	skipc
	incfsz	3+(??_delay_ms+0)+0,w
	goto	u2819
	goto	u2810
u2819:
	subwf	(delay_ms@ms+3),f
u2810:

	movlw	0FFh
	xorwf	((delay_ms@ms+3)),w
	skipz
	goto	u2825
	movlw	0FFh
	xorwf	((delay_ms@ms+2)),w
	skipz
	goto	u2825
	movlw	0FFh
	xorwf	((delay_ms@ms+1)),w
	skipz
	goto	u2825
	movlw	0FFh
	xorwf	((delay_ms@ms)),w
u2825:
	skipz
	goto	u2821
	goto	u2820
u2821:
	goto	l2802
u2820:
	goto	l906
	
l905:	
	line	111
	
l906:	
	return
	opt stack 0
GLOBAL	__end_of_delay_ms
	__end_of_delay_ms:
;; =============== function _delay_ms ends ============

	signat	_delay_ms,4216
	global	_choose_num_alphabet
psect	text346,local,class=CODE,delta=2
global __ptext346
__ptext346:

;; *************** function _choose_num_alphabet *****************
;; Defined at:
;;		line 247 in file "C:\Users\younce\Documents\Dot Matrix\Dot Matrix.c"
;; Parameters:    Size  Location     Type
;;  num_alp         1    wreg     unsigned char 
;;  num_alp_arra    1    0[COMMON] PTR unsigned char 
;;		 -> number_alphabet(8), 
;; Auto vars:     Size  Location     Type
;;  num_alp         1    2[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         1       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_light_a_number_alphabet
;; This function uses a non-reentrant model
;;
psect	text346
	file	"C:\Users\younce\Documents\Dot Matrix\Dot Matrix.c"
	line	247
	global	__size_of_choose_num_alphabet
	__size_of_choose_num_alphabet	equ	__end_of_choose_num_alphabet-_choose_num_alphabet
	
_choose_num_alphabet:	
	opt	stack 5
; Regs used in _choose_num_alphabet: [wreg-fsr0h+status,2+status,0]
;choose_num_alphabet@num_alp stored from wreg
	movwf	(choose_num_alphabet@num_alp)
	line	248
	
l2708:	
;Dot Matrix.c: 248: switch(num_alp)
	goto	l2798
	line	250
;Dot Matrix.c: 249: {
;Dot Matrix.c: 250: case 'A': num_alp_array[0] = 0xc3;
	
l975:	
	
l2710:	
	movlw	(0C3h)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	251
	
l2712:	
;Dot Matrix.c: 251: num_alp_array[1] = 0xc3;
	movlw	(0C3h)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	01h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	252
	
l2714:	
;Dot Matrix.c: 252: num_alp_array[2] = 0xff;
	movlw	(0FFh)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	02h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	253
	
l2716:	
;Dot Matrix.c: 253: num_alp_array[3] = 0xff;
	movlw	(0FFh)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	03h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	254
	
l2718:	
;Dot Matrix.c: 254: num_alp_array[4] = 0xc3;
	movlw	(0C3h)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	04h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	255
	
l2720:	
;Dot Matrix.c: 255: num_alp_array[5] = 0xe7;
	movlw	(0E7h)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	05h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	256
	
l2722:	
;Dot Matrix.c: 256: num_alp_array[6] = 0x7e;
	movlw	(07Eh)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	06h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	257
	
l2724:	
;Dot Matrix.c: 257: num_alp_array[7] = 0x3c;
	movlw	(03Ch)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	07h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	258
;Dot Matrix.c: 258: break;
	goto	l1013
	line	260
;Dot Matrix.c: 260: case 'B': num_alp_array[0] = 0x3f;
	
l977:	
	
l2726:	
	movlw	(03Fh)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	261
;Dot Matrix.c: 261: num_alp_array[1] = 0xff;
	movlw	(0FFh)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	01h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	262
;Dot Matrix.c: 262: num_alp_array[2] = 0xc3;
	movlw	(0C3h)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	02h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	263
;Dot Matrix.c: 263: num_alp_array[3] = 0xff;
	movlw	(0FFh)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	03h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	264
;Dot Matrix.c: 264: num_alp_array[4] = 0xff;
	movlw	(0FFh)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	04h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	265
;Dot Matrix.c: 265: num_alp_array[5] = 0xc3;
	movlw	(0C3h)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	05h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	266
;Dot Matrix.c: 266: num_alp_array[6] = 0xff;
	movlw	(0FFh)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	06h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	267
;Dot Matrix.c: 267: num_alp_array[7] = 0x3f;
	movlw	(03Fh)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	07h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	268
;Dot Matrix.c: 268: break;
	goto	l1013
	line	270
;Dot Matrix.c: 270: case 'C': num_alp_array[0] = 0xff;
	
l978:	
	
l2728:	
	movlw	(0FFh)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	271
;Dot Matrix.c: 271: num_alp_array[1] = 0xff;
	movlw	(0FFh)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	01h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	272
;Dot Matrix.c: 272: num_alp_array[2] = 0x03;
	movlw	(03h)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	02h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	273
;Dot Matrix.c: 273: num_alp_array[3] = 0x03;
	movlw	(03h)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	03h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	274
;Dot Matrix.c: 274: num_alp_array[4] = 0x03;
	movlw	(03h)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	04h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	275
;Dot Matrix.c: 275: num_alp_array[5] = 0x03;
	movlw	(03h)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	05h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	276
;Dot Matrix.c: 276: num_alp_array[6] = 0xff;
	movlw	(0FFh)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	06h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	277
;Dot Matrix.c: 277: num_alp_array[7] = 0xff;
	movlw	(0FFh)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	07h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	278
;Dot Matrix.c: 278: break;
	goto	l1013
	line	280
;Dot Matrix.c: 280: case 'D': num_alp_array[0] = 0x3f;
	
l979:	
	
l2730:	
	movlw	(03Fh)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	281
;Dot Matrix.c: 281: num_alp_array[1] = 0x7f;
	movlw	(07Fh)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	01h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	282
;Dot Matrix.c: 282: num_alp_array[2] = 0xc3;
	movlw	(0C3h)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	02h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	283
;Dot Matrix.c: 283: num_alp_array[3] = 0xc3;
	movlw	(0C3h)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	03h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	284
;Dot Matrix.c: 284: num_alp_array[4] = 0xc3;
	movlw	(0C3h)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	04h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	285
;Dot Matrix.c: 285: num_alp_array[5] = 0xc3;
	movlw	(0C3h)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	05h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	286
;Dot Matrix.c: 286: num_alp_array[6] = 0x7f;
	movlw	(07Fh)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	06h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	287
;Dot Matrix.c: 287: num_alp_array[7] = 0x3f;
	movlw	(03Fh)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	07h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	288
;Dot Matrix.c: 288: break;
	goto	l1013
	line	290
;Dot Matrix.c: 290: case 'E': num_alp_array[0] = 0xff;
	
l980:	
	
l2732:	
	movlw	(0FFh)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	291
;Dot Matrix.c: 291: num_alp_array[1] = 0xff;
	movlw	(0FFh)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	01h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	292
;Dot Matrix.c: 292: num_alp_array[2] = 0x03;
	movlw	(03h)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	02h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	293
;Dot Matrix.c: 293: num_alp_array[3] = 0xff;
	movlw	(0FFh)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	03h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	294
;Dot Matrix.c: 294: num_alp_array[4] = 0xff;
	movlw	(0FFh)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	04h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	295
;Dot Matrix.c: 295: num_alp_array[5] = 0x03;
	movlw	(03h)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	05h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	296
;Dot Matrix.c: 296: num_alp_array[6] = 0xff;
	movlw	(0FFh)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	06h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	297
;Dot Matrix.c: 297: num_alp_array[7] = 0xff;
	movlw	(0FFh)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	07h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	298
;Dot Matrix.c: 298: break;
	goto	l1013
	line	300
;Dot Matrix.c: 300: case 'F': num_alp_array[0] = 0x03;
	
l981:	
	
l2734:	
	movlw	(03h)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	301
;Dot Matrix.c: 301: num_alp_array[1] = 0x03;
	movlw	(03h)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	01h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	302
;Dot Matrix.c: 302: num_alp_array[2] = 0x03;
	movlw	(03h)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	02h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	303
;Dot Matrix.c: 303: num_alp_array[3] = 0xff;
	movlw	(0FFh)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	03h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	304
;Dot Matrix.c: 304: num_alp_array[4] = 0xff;
	movlw	(0FFh)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	04h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	305
;Dot Matrix.c: 305: num_alp_array[5] = 0x03;
	movlw	(03h)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	05h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	306
;Dot Matrix.c: 306: num_alp_array[6] = 0xff;
	movlw	(0FFh)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	06h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	307
;Dot Matrix.c: 307: num_alp_array[7] = 0xff;
	movlw	(0FFh)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	07h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	308
;Dot Matrix.c: 308: break;
	goto	l1013
	line	310
;Dot Matrix.c: 310: case 'G': num_alp_array[0] = 0xfe;
	
l982:	
	
l2736:	
	movlw	(0FEh)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	311
;Dot Matrix.c: 311: num_alp_array[1] = 0xff;
	movlw	(0FFh)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	01h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	312
;Dot Matrix.c: 312: num_alp_array[2] = 0xc3;
	movlw	(0C3h)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	02h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	313
;Dot Matrix.c: 313: num_alp_array[3] = 0xf3;
	movlw	(0F3h)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	03h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	314
;Dot Matrix.c: 314: num_alp_array[4] = 0xf3;
	movlw	(0F3h)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	04h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	315
;Dot Matrix.c: 315: num_alp_array[5] = 0x03;
	movlw	(03h)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	05h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	316
;Dot Matrix.c: 316: num_alp_array[6] = 0xfe;
	movlw	(0FEh)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	06h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	317
;Dot Matrix.c: 317: num_alp_array[7] = 0xfc;
	movlw	(0FCh)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	07h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	318
;Dot Matrix.c: 318: break;
	goto	l1013
	line	320
;Dot Matrix.c: 320: case 'H': num_alp_array[0] = 0xc3;
	
l983:	
	
l2738:	
	movlw	(0C3h)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	321
;Dot Matrix.c: 321: num_alp_array[1] = 0xc3;
	movlw	(0C3h)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	01h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	322
;Dot Matrix.c: 322: num_alp_array[2] = 0xc3;
	movlw	(0C3h)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	02h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	323
;Dot Matrix.c: 323: num_alp_array[3] = 0xff;
	movlw	(0FFh)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	03h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	324
;Dot Matrix.c: 324: num_alp_array[4] = 0xff;
	movlw	(0FFh)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	04h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	325
;Dot Matrix.c: 325: num_alp_array[5] = 0xc3;
	movlw	(0C3h)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	05h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	326
;Dot Matrix.c: 326: num_alp_array[6] = 0xc3;
	movlw	(0C3h)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	06h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	327
;Dot Matrix.c: 327: num_alp_array[7] = 0xc3;
	movlw	(0C3h)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	07h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	328
;Dot Matrix.c: 328: break;
	goto	l1013
	line	330
;Dot Matrix.c: 330: case 'I': num_alp_array[0] = 0xff;
	
l984:	
	
l2740:	
	movlw	(0FFh)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	331
;Dot Matrix.c: 331: num_alp_array[1] = 0xff;
	movlw	(0FFh)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	01h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	332
;Dot Matrix.c: 332: num_alp_array[2] = 0x18;
	movlw	(018h)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	02h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	333
;Dot Matrix.c: 333: num_alp_array[3] = 0x18;
	movlw	(018h)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	03h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	334
;Dot Matrix.c: 334: num_alp_array[4] = 0x18;
	movlw	(018h)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	04h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	335
;Dot Matrix.c: 335: num_alp_array[5] = 0x18;
	movlw	(018h)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	05h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	336
;Dot Matrix.c: 336: num_alp_array[6] = 0xff;
	movlw	(0FFh)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	06h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	337
;Dot Matrix.c: 337: num_alp_array[7] = 0xff;
	movlw	(0FFh)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	07h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	338
;Dot Matrix.c: 338: break;
	goto	l1013
	line	339
;Dot Matrix.c: 339: case 'J': num_alp_array[0] = 0x1e;
	
l985:	
	
l2742:	
	movlw	(01Eh)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	340
;Dot Matrix.c: 340: num_alp_array[1] = 0x3f;
	movlw	(03Fh)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	01h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	341
;Dot Matrix.c: 341: num_alp_array[2] = 0x33;
	movlw	(033h)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	02h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	342
;Dot Matrix.c: 342: num_alp_array[3] = 0x33;
	movlw	(033h)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	03h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	343
;Dot Matrix.c: 343: num_alp_array[4] = 0x30;
	movlw	(030h)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	04h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	344
;Dot Matrix.c: 344: num_alp_array[5] = 0x30;
	movlw	(030h)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	05h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	345
;Dot Matrix.c: 345: num_alp_array[6] = 0xff;
	movlw	(0FFh)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	06h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	346
;Dot Matrix.c: 346: num_alp_array[7] = 0xff;
	movlw	(0FFh)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	07h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	347
;Dot Matrix.c: 347: break;
	goto	l1013
	line	348
;Dot Matrix.c: 348: case 'K': num_alp_array[0] = 0xc3;
	
l986:	
	
l2744:	
	movlw	(0C3h)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	349
;Dot Matrix.c: 349: num_alp_array[1] = 0x63;
	movlw	(063h)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	01h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	350
;Dot Matrix.c: 350: num_alp_array[2] = 0x33;
	movlw	(033h)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	02h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	351
;Dot Matrix.c: 351: num_alp_array[3] = 0x1f;
	movlw	(01Fh)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	03h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	352
;Dot Matrix.c: 352: num_alp_array[4] = 0x1f;
	movlw	(01Fh)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	04h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	353
;Dot Matrix.c: 353: num_alp_array[5] = 0x33;
	movlw	(033h)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	05h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	354
;Dot Matrix.c: 354: num_alp_array[6] = 0x63;
	movlw	(063h)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	06h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	355
;Dot Matrix.c: 355: num_alp_array[7] = 0xc3;
	movlw	(0C3h)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	07h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	356
;Dot Matrix.c: 356: break;
	goto	l1013
	line	357
;Dot Matrix.c: 357: case 'L': num_alp_array[0] = 0xff;
	
l987:	
	
l2746:	
	movlw	(0FFh)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	358
;Dot Matrix.c: 358: num_alp_array[1] = 0xff;
	movlw	(0FFh)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	01h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	359
;Dot Matrix.c: 359: num_alp_array[2] = 0x03;
	movlw	(03h)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	02h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	360
;Dot Matrix.c: 360: num_alp_array[3] = 0x03;
	movlw	(03h)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	03h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	361
;Dot Matrix.c: 361: num_alp_array[4] = 0x03;
	movlw	(03h)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	04h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	362
;Dot Matrix.c: 362: num_alp_array[5] = 0x03;
	movlw	(03h)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	05h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	363
;Dot Matrix.c: 363: num_alp_array[6] = 0x03;
	movlw	(03h)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	06h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	364
;Dot Matrix.c: 364: num_alp_array[7] = 0x03;
	movlw	(03h)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	07h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	365
;Dot Matrix.c: 365: break;
	goto	l1013
	line	366
;Dot Matrix.c: 366: case 'M': num_alp_array[0] = 0xc3;
	
l988:	
	
l2748:	
	movlw	(0C3h)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	367
;Dot Matrix.c: 367: num_alp_array[1] = 0xc3;
	movlw	(0C3h)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	01h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	368
;Dot Matrix.c: 368: num_alp_array[2] = 0xc3;
	movlw	(0C3h)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	02h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	369
;Dot Matrix.c: 369: num_alp_array[3] = 0xc3;
	movlw	(0C3h)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	03h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	370
;Dot Matrix.c: 370: num_alp_array[4] = 0xdb;
	movlw	(0DBh)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	04h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	371
;Dot Matrix.c: 371: num_alp_array[5] = 0xff;
	movlw	(0FFh)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	05h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	372
;Dot Matrix.c: 372: num_alp_array[6] = 0xe7;
	movlw	(0E7h)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	06h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	373
;Dot Matrix.c: 373: num_alp_array[7] = 0xc3;
	movlw	(0C3h)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	07h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	374
;Dot Matrix.c: 374: break;
	goto	l1013
	line	376
;Dot Matrix.c: 376: case 'N': num_alp_array[0] = 0xc3;
	
l989:	
	
l2750:	
	movlw	(0C3h)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	377
;Dot Matrix.c: 377: num_alp_array[1] = 0xe3;
	movlw	(0E3h)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	01h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	378
;Dot Matrix.c: 378: num_alp_array[2] = 0xf3;
	movlw	(0F3h)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	02h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	379
;Dot Matrix.c: 379: num_alp_array[3] = 0xfb;
	movlw	(0FBh)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	03h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	380
;Dot Matrix.c: 380: num_alp_array[4] = 0xdf;
	movlw	(0DFh)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	04h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	381
;Dot Matrix.c: 381: num_alp_array[5] = 0xcf;
	movlw	(0CFh)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	05h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	382
;Dot Matrix.c: 382: num_alp_array[6] = 0xc7;
	movlw	(0C7h)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	06h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	383
;Dot Matrix.c: 383: num_alp_array[7] = 0xc3;
	movlw	(0C3h)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	07h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	384
;Dot Matrix.c: 384: break;
	goto	l1013
	line	386
;Dot Matrix.c: 386: case 'O': num_alp_array[0] = 0x3c;
	
l990:	
	
l2752:	
	movlw	(03Ch)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	387
;Dot Matrix.c: 387: num_alp_array[1] = 0x7e;
	movlw	(07Eh)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	01h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	388
;Dot Matrix.c: 388: num_alp_array[2] = 0xc3;
	movlw	(0C3h)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	02h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	389
;Dot Matrix.c: 389: num_alp_array[3] = 0xc3;
	movlw	(0C3h)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	03h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	390
;Dot Matrix.c: 390: num_alp_array[4] = 0xc3;
	movlw	(0C3h)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	04h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	391
;Dot Matrix.c: 391: num_alp_array[5] = 0xc3;
	movlw	(0C3h)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	05h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	392
;Dot Matrix.c: 392: num_alp_array[6] = 0x7e;
	movlw	(07Eh)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	06h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	393
;Dot Matrix.c: 393: num_alp_array[7] = 0x3c;
	movlw	(03Ch)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	07h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	394
;Dot Matrix.c: 394: break;
	goto	l1013
	line	396
;Dot Matrix.c: 396: case 'P': num_alp_array[0] = 0x03;
	
l991:	
	
l2754:	
	movlw	(03h)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	397
;Dot Matrix.c: 397: num_alp_array[1] = 0x03;
	movlw	(03h)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	01h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	398
;Dot Matrix.c: 398: num_alp_array[2] = 0x7f;
	movlw	(07Fh)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	02h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	399
;Dot Matrix.c: 399: num_alp_array[3] = 0xff;
	movlw	(0FFh)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	03h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	400
;Dot Matrix.c: 400: num_alp_array[4] = 0xc3;
	movlw	(0C3h)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	04h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	401
;Dot Matrix.c: 401: num_alp_array[5] = 0xc3;
	movlw	(0C3h)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	05h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	402
;Dot Matrix.c: 402: num_alp_array[6] = 0xff;
	movlw	(0FFh)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	06h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	403
;Dot Matrix.c: 403: num_alp_array[7] = 0x7f;
	movlw	(07Fh)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	07h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	404
;Dot Matrix.c: 404: break;
	goto	l1013
	line	406
;Dot Matrix.c: 406: case 'Q': num_alp_array[0] = 0xde;
	
l992:	
	
l2756:	
	movlw	(0DEh)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	407
;Dot Matrix.c: 407: num_alp_array[1] = 0x7f;
	movlw	(07Fh)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	01h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	408
;Dot Matrix.c: 408: num_alp_array[2] = 0xf3;
	movlw	(0F3h)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	02h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	409
;Dot Matrix.c: 409: num_alp_array[3] = 0xdb;
	movlw	(0DBh)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	03h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	410
;Dot Matrix.c: 410: num_alp_array[4] = 0xc3;
	movlw	(0C3h)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	04h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	411
;Dot Matrix.c: 411: num_alp_array[5] = 0xc3;
	movlw	(0C3h)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	05h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	412
;Dot Matrix.c: 412: num_alp_array[6] = 0x7e;
	movlw	(07Eh)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	06h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	413
;Dot Matrix.c: 413: num_alp_array[7] = 0x3c;
	movlw	(03Ch)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	07h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	414
;Dot Matrix.c: 414: break;
	goto	l1013
	line	416
;Dot Matrix.c: 416: case 'R': num_alp_array[0] = 0xc3;
	
l993:	
	
l2758:	
	movlw	(0C3h)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	417
;Dot Matrix.c: 417: num_alp_array[1] = 0xe3;
	movlw	(0E3h)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	01h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	418
;Dot Matrix.c: 418: num_alp_array[2] = 0x73;
	movlw	(073h)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	02h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	419
;Dot Matrix.c: 419: num_alp_array[3] = 0x7f;
	movlw	(07Fh)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	03h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	420
;Dot Matrix.c: 420: num_alp_array[4] = 0xff;
	movlw	(0FFh)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	04h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	421
;Dot Matrix.c: 421: num_alp_array[5] = 0xc3;
	movlw	(0C3h)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	05h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	422
;Dot Matrix.c: 422: num_alp_array[6] = 0xff;
	movlw	(0FFh)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	06h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	423
;Dot Matrix.c: 423: num_alp_array[7] = 0x7f;
	movlw	(07Fh)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	07h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	424
;Dot Matrix.c: 424: break;
	goto	l1013
	line	426
;Dot Matrix.c: 426: case 'S': num_alp_array[0] = 0xff;
	
l994:	
	
l2760:	
	movlw	(0FFh)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	427
;Dot Matrix.c: 427: num_alp_array[1] = 0xff;
	movlw	(0FFh)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	01h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	428
;Dot Matrix.c: 428: num_alp_array[2] = 0xc0;
	movlw	(0C0h)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	02h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	429
;Dot Matrix.c: 429: num_alp_array[3] = 0xff;
	movlw	(0FFh)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	03h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	430
;Dot Matrix.c: 430: num_alp_array[4] = 0xff;
	movlw	(0FFh)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	04h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	431
;Dot Matrix.c: 431: num_alp_array[5] = 0x03;
	movlw	(03h)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	05h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	432
;Dot Matrix.c: 432: num_alp_array[6] = 0xff;
	movlw	(0FFh)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	06h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	433
;Dot Matrix.c: 433: num_alp_array[7] = 0xff;
	movlw	(0FFh)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	07h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	434
;Dot Matrix.c: 434: break;
	goto	l1013
	line	436
;Dot Matrix.c: 436: case 'T': num_alp_array[0] = 0x18;
	
l995:	
	
l2762:	
	movlw	(018h)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	437
;Dot Matrix.c: 437: num_alp_array[1] = 0x18;
	movlw	(018h)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	01h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	438
;Dot Matrix.c: 438: num_alp_array[2] = 0x18;
	movlw	(018h)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	02h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	439
;Dot Matrix.c: 439: num_alp_array[3] = 0x18;
	movlw	(018h)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	03h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	440
;Dot Matrix.c: 440: num_alp_array[4] = 0x18;
	movlw	(018h)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	04h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	441
;Dot Matrix.c: 441: num_alp_array[5] = 0x18;
	movlw	(018h)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	05h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	442
;Dot Matrix.c: 442: num_alp_array[6] = 0xff;
	movlw	(0FFh)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	06h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	443
;Dot Matrix.c: 443: num_alp_array[7] = 0xff;
	movlw	(0FFh)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	07h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	444
;Dot Matrix.c: 444: break;
	goto	l1013
	line	445
;Dot Matrix.c: 445: case 'U': num_alp_array[0] = 0x7e;
	
l996:	
	
l2764:	
	movlw	(07Eh)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	446
;Dot Matrix.c: 446: num_alp_array[1] = 0xff;
	movlw	(0FFh)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	01h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	447
;Dot Matrix.c: 447: num_alp_array[2] = 0xc3;
	movlw	(0C3h)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	02h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	448
;Dot Matrix.c: 448: num_alp_array[3] = 0xc3;
	movlw	(0C3h)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	03h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	449
;Dot Matrix.c: 449: num_alp_array[4] = 0xc3;
	movlw	(0C3h)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	04h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	450
;Dot Matrix.c: 450: num_alp_array[5] = 0xc3;
	movlw	(0C3h)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	05h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	451
;Dot Matrix.c: 451: num_alp_array[6] = 0xc3;
	movlw	(0C3h)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	06h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	452
;Dot Matrix.c: 452: num_alp_array[7] = 0xc3;
	movlw	(0C3h)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	07h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	453
;Dot Matrix.c: 453: break;
	goto	l1013
	line	455
;Dot Matrix.c: 455: case 'V': num_alp_array[0] = 0x18;
	
l997:	
	
l2766:	
	movlw	(018h)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	456
;Dot Matrix.c: 456: num_alp_array[1] = 0x3c;
	movlw	(03Ch)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	01h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	457
;Dot Matrix.c: 457: num_alp_array[2] = 0x66;
	movlw	(066h)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	02h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	458
;Dot Matrix.c: 458: num_alp_array[3] = 0xe7;
	movlw	(0E7h)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	03h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	459
;Dot Matrix.c: 459: num_alp_array[4] = 0xc3;
	movlw	(0C3h)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	04h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	460
;Dot Matrix.c: 460: num_alp_array[5] = 0xc3;
	movlw	(0C3h)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	05h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	461
;Dot Matrix.c: 461: num_alp_array[6] = 0xc3;
	movlw	(0C3h)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	06h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	462
;Dot Matrix.c: 462: num_alp_array[7] = 0xc3;
	movlw	(0C3h)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	07h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	463
;Dot Matrix.c: 463: break;
	goto	l1013
	line	465
;Dot Matrix.c: 465: case 'W': num_alp_array[0] = 0xc3;
	
l998:	
	
l2768:	
	movlw	(0C3h)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	466
;Dot Matrix.c: 466: num_alp_array[1] = 0xe7;
	movlw	(0E7h)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	01h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	467
;Dot Matrix.c: 467: num_alp_array[2] = 0xff;
	movlw	(0FFh)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	02h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	468
;Dot Matrix.c: 468: num_alp_array[3] = 0xdb;
	movlw	(0DBh)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	03h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	469
;Dot Matrix.c: 469: num_alp_array[4] = 0xc3;
	movlw	(0C3h)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	04h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	470
;Dot Matrix.c: 470: num_alp_array[5] = 0xc3;
	movlw	(0C3h)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	05h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	471
;Dot Matrix.c: 471: num_alp_array[6] = 0xc3;
	movlw	(0C3h)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	06h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	472
;Dot Matrix.c: 472: num_alp_array[7] = 0xc3;
	movlw	(0C3h)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	07h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	473
;Dot Matrix.c: 473: break;
	goto	l1013
	line	475
;Dot Matrix.c: 475: case 'X': num_alp_array[0] = 0xc3;
	
l999:	
	
l2770:	
	movlw	(0C3h)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	476
;Dot Matrix.c: 476: num_alp_array[1] = 0xc3;
	movlw	(0C3h)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	01h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	477
;Dot Matrix.c: 477: num_alp_array[2] = 0x66;
	movlw	(066h)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	02h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	478
;Dot Matrix.c: 478: num_alp_array[3] = 0x3c;
	movlw	(03Ch)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	03h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	479
;Dot Matrix.c: 479: num_alp_array[4] = 0x3c;
	movlw	(03Ch)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	04h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	480
;Dot Matrix.c: 480: num_alp_array[5] = 0x66;
	movlw	(066h)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	05h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	481
;Dot Matrix.c: 481: num_alp_array[6] = 0xc3;
	movlw	(0C3h)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	06h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	482
;Dot Matrix.c: 482: num_alp_array[7] = 0xc3;
	movlw	(0C3h)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	07h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	483
;Dot Matrix.c: 483: break;
	goto	l1013
	line	485
;Dot Matrix.c: 485: case 'Y': num_alp_array[0] = 0x18;
	
l1000:	
	
l2772:	
	movlw	(018h)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	486
;Dot Matrix.c: 486: num_alp_array[1] = 0x18;
	movlw	(018h)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	01h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	487
;Dot Matrix.c: 487: num_alp_array[2] = 0x18;
	movlw	(018h)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	02h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	488
;Dot Matrix.c: 488: num_alp_array[3] = 0x18;
	movlw	(018h)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	03h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	489
;Dot Matrix.c: 489: num_alp_array[4] = 0x3c;
	movlw	(03Ch)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	04h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	490
;Dot Matrix.c: 490: num_alp_array[5] = 0x66;
	movlw	(066h)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	05h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	491
;Dot Matrix.c: 491: num_alp_array[6] = 0xc3;
	movlw	(0C3h)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	06h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	492
;Dot Matrix.c: 492: num_alp_array[7] = 0xc3;
	movlw	(0C3h)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	07h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	493
;Dot Matrix.c: 493: break;
	goto	l1013
	line	494
;Dot Matrix.c: 494: case 'Z': num_alp_array[0] = 0xff;
	
l1001:	
	
l2774:	
	movlw	(0FFh)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	495
;Dot Matrix.c: 495: num_alp_array[1] = 0xff;
	movlw	(0FFh)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	01h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	496
;Dot Matrix.c: 496: num_alp_array[2] = 0x0e;
	movlw	(0Eh)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	02h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	497
;Dot Matrix.c: 497: num_alp_array[3] = 0x1c;
	movlw	(01Ch)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	03h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	498
;Dot Matrix.c: 498: num_alp_array[4] = 0x38;
	movlw	(038h)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	04h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	499
;Dot Matrix.c: 499: num_alp_array[5] = 0x70;
	movlw	(070h)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	05h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	500
;Dot Matrix.c: 500: num_alp_array[6] = 0xff;
	movlw	(0FFh)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	06h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	501
;Dot Matrix.c: 501: num_alp_array[7] = 0xff;
	movlw	(0FFh)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	07h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	502
;Dot Matrix.c: 502: break;
	goto	l1013
	line	503
;Dot Matrix.c: 503: case '0': num_alp_array[0] = 0xff;
	
l1002:	
	
l2776:	
	movlw	(0FFh)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	504
;Dot Matrix.c: 504: num_alp_array[1] = 0xff;
	movlw	(0FFh)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	01h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	505
;Dot Matrix.c: 505: num_alp_array[2] = 0xc3;
	movlw	(0C3h)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	02h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	506
;Dot Matrix.c: 506: num_alp_array[3] = 0xc3;
	movlw	(0C3h)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	03h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	507
;Dot Matrix.c: 507: num_alp_array[4] = 0xc3;
	movlw	(0C3h)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	04h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	508
;Dot Matrix.c: 508: num_alp_array[5] = 0xc3;
	movlw	(0C3h)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	05h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	509
;Dot Matrix.c: 509: num_alp_array[6] = 0xff;
	movlw	(0FFh)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	06h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	510
;Dot Matrix.c: 510: num_alp_array[7] = 0xff;
	movlw	(0FFh)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	07h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	511
;Dot Matrix.c: 511: break;
	goto	l1013
	line	512
;Dot Matrix.c: 512: case '1': num_alp_array[0] = 0x18;
	
l1003:	
	
l2778:	
	movlw	(018h)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	513
;Dot Matrix.c: 513: num_alp_array[1] = 0x18;
	movlw	(018h)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	01h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	514
;Dot Matrix.c: 514: num_alp_array[2] = 0x18;
	movlw	(018h)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	02h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	515
;Dot Matrix.c: 515: num_alp_array[3] = 0x18;
	movlw	(018h)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	03h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	516
;Dot Matrix.c: 516: num_alp_array[4] = 0x18;
	movlw	(018h)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	04h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	517
;Dot Matrix.c: 517: num_alp_array[5] = 0x18;
	movlw	(018h)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	05h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	518
;Dot Matrix.c: 518: num_alp_array[6] = 0x18;
	movlw	(018h)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	06h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	519
;Dot Matrix.c: 519: num_alp_array[7] = 0x18;
	movlw	(018h)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	07h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	520
;Dot Matrix.c: 520: break;
	goto	l1013
	line	521
;Dot Matrix.c: 521: case '2': num_alp_array[0] = 0xff;
	
l1004:	
	
l2780:	
	movlw	(0FFh)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	522
;Dot Matrix.c: 522: num_alp_array[1] = 0xff;
	movlw	(0FFh)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	01h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	523
;Dot Matrix.c: 523: num_alp_array[2] = 0x03;
	movlw	(03h)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	02h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	524
;Dot Matrix.c: 524: num_alp_array[3] = 0xff;
	movlw	(0FFh)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	03h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	525
;Dot Matrix.c: 525: num_alp_array[4] = 0xff;
	movlw	(0FFh)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	04h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	526
;Dot Matrix.c: 526: num_alp_array[5] = 0xc0;
	movlw	(0C0h)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	05h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	527
;Dot Matrix.c: 527: num_alp_array[6] = 0xff;
	movlw	(0FFh)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	06h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	528
;Dot Matrix.c: 528: num_alp_array[7] = 0xff;
	movlw	(0FFh)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	07h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	529
;Dot Matrix.c: 529: break;
	goto	l1013
	line	530
;Dot Matrix.c: 530: case '3': num_alp_array[0] = 0xff;
	
l1005:	
	
l2782:	
	movlw	(0FFh)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	531
;Dot Matrix.c: 531: num_alp_array[1] = 0xff;
	movlw	(0FFh)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	01h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	532
;Dot Matrix.c: 532: num_alp_array[2] = 0xc0;
	movlw	(0C0h)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	02h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	533
;Dot Matrix.c: 533: num_alp_array[3] = 0xff;
	movlw	(0FFh)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	03h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	534
;Dot Matrix.c: 534: num_alp_array[4] = 0xff;
	movlw	(0FFh)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	04h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	535
;Dot Matrix.c: 535: num_alp_array[5] = 0xc0;
	movlw	(0C0h)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	05h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	536
;Dot Matrix.c: 536: num_alp_array[6] = 0xff;
	movlw	(0FFh)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	06h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	537
;Dot Matrix.c: 537: num_alp_array[7] = 0xff;
	movlw	(0FFh)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	07h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	538
;Dot Matrix.c: 538: break;
	goto	l1013
	line	539
;Dot Matrix.c: 539: case '4': num_alp_array[0] = 0xc0;
	
l1006:	
	
l2784:	
	movlw	(0C0h)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	540
;Dot Matrix.c: 540: num_alp_array[1] = 0xc0;
	movlw	(0C0h)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	01h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	541
;Dot Matrix.c: 541: num_alp_array[2] = 0xc0;
	movlw	(0C0h)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	02h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	542
;Dot Matrix.c: 542: num_alp_array[3] = 0xff;
	movlw	(0FFh)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	03h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	543
;Dot Matrix.c: 543: num_alp_array[4] = 0xff;
	movlw	(0FFh)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	04h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	544
;Dot Matrix.c: 544: num_alp_array[5] = 0xc3;
	movlw	(0C3h)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	05h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	545
;Dot Matrix.c: 545: num_alp_array[6] = 0xc3;
	movlw	(0C3h)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	06h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	546
;Dot Matrix.c: 546: num_alp_array[7] = 0xc3;
	movlw	(0C3h)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	07h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	547
;Dot Matrix.c: 547: break;
	goto	l1013
	line	548
;Dot Matrix.c: 548: case '5': num_alp_array[0] = 0xff;
	
l1007:	
	
l2786:	
	movlw	(0FFh)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	549
;Dot Matrix.c: 549: num_alp_array[1] = 0xff;
	movlw	(0FFh)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	01h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	550
;Dot Matrix.c: 550: num_alp_array[2] = 0xc0;
	movlw	(0C0h)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	02h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	551
;Dot Matrix.c: 551: num_alp_array[3] = 0xff;
	movlw	(0FFh)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	03h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	552
;Dot Matrix.c: 552: num_alp_array[4] = 0xff;
	movlw	(0FFh)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	04h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	553
;Dot Matrix.c: 553: num_alp_array[5] = 0x03;
	movlw	(03h)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	05h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	554
;Dot Matrix.c: 554: num_alp_array[6] = 0xff;
	movlw	(0FFh)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	06h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	555
;Dot Matrix.c: 555: num_alp_array[7] = 0xff;
	movlw	(0FFh)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	07h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	556
;Dot Matrix.c: 556: break;
	goto	l1013
	line	557
;Dot Matrix.c: 557: case '6': num_alp_array[0] = 0xff;
	
l1008:	
	
l2788:	
	movlw	(0FFh)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	558
;Dot Matrix.c: 558: num_alp_array[1] = 0xff;
	movlw	(0FFh)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	01h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	559
;Dot Matrix.c: 559: num_alp_array[2] = 0xc3;
	movlw	(0C3h)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	02h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	560
;Dot Matrix.c: 560: num_alp_array[3] = 0xff;
	movlw	(0FFh)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	03h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	561
;Dot Matrix.c: 561: num_alp_array[4] = 0xff;
	movlw	(0FFh)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	04h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	562
;Dot Matrix.c: 562: num_alp_array[5] = 0x03;
	movlw	(03h)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	05h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	563
;Dot Matrix.c: 563: num_alp_array[6] = 0xff;
	movlw	(0FFh)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	06h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	564
;Dot Matrix.c: 564: num_alp_array[7] = 0xff;
	movlw	(0FFh)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	07h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	565
;Dot Matrix.c: 565: break;
	goto	l1013
	line	566
;Dot Matrix.c: 566: case '7': num_alp_array[0] = 0xc0;
	
l1009:	
	
l2790:	
	movlw	(0C0h)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	567
;Dot Matrix.c: 567: num_alp_array[1] = 0xc0;
	movlw	(0C0h)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	01h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	568
;Dot Matrix.c: 568: num_alp_array[2] = 0xc0;
	movlw	(0C0h)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	02h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	569
;Dot Matrix.c: 569: num_alp_array[3] = 0xc0;
	movlw	(0C0h)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	03h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	570
;Dot Matrix.c: 570: num_alp_array[4] = 0xc0;
	movlw	(0C0h)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	04h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	571
;Dot Matrix.c: 571: num_alp_array[5] = 0xc0;
	movlw	(0C0h)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	05h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	572
;Dot Matrix.c: 572: num_alp_array[6] = 0xff;
	movlw	(0FFh)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	06h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	573
;Dot Matrix.c: 573: num_alp_array[7] = 0xff;
	movlw	(0FFh)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	07h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	574
;Dot Matrix.c: 574: break;
	goto	l1013
	line	575
;Dot Matrix.c: 575: case '8': num_alp_array[0] = 0xff;
	
l1010:	
	
l2792:	
	movlw	(0FFh)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	576
;Dot Matrix.c: 576: num_alp_array[1] = 0xff;
	movlw	(0FFh)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	01h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	577
;Dot Matrix.c: 577: num_alp_array[2] = 0xc3;
	movlw	(0C3h)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	02h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	578
;Dot Matrix.c: 578: num_alp_array[3] = 0xff;
	movlw	(0FFh)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	03h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	579
;Dot Matrix.c: 579: num_alp_array[4] = 0xff;
	movlw	(0FFh)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	04h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	580
;Dot Matrix.c: 580: num_alp_array[5] = 0xc3;
	movlw	(0C3h)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	05h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	581
;Dot Matrix.c: 581: num_alp_array[6] = 0xff;
	movlw	(0FFh)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	06h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	582
;Dot Matrix.c: 582: num_alp_array[7] = 0xff;
	movlw	(0FFh)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	07h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	583
;Dot Matrix.c: 583: break;
	goto	l1013
	line	584
;Dot Matrix.c: 584: case '9': num_alp_array[0] = 0xc0;
	
l1011:	
	
l2794:	
	movlw	(0C0h)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	585
;Dot Matrix.c: 585: num_alp_array[1] = 0xc0;
	movlw	(0C0h)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	01h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	586
;Dot Matrix.c: 586: num_alp_array[2] = 0xc0;
	movlw	(0C0h)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	02h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	587
;Dot Matrix.c: 587: num_alp_array[3] = 0xff;
	movlw	(0FFh)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	03h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	588
;Dot Matrix.c: 588: num_alp_array[4] = 0xff;
	movlw	(0FFh)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	04h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	589
;Dot Matrix.c: 589: num_alp_array[5] = 0xc3;
	movlw	(0C3h)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	05h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	590
;Dot Matrix.c: 590: num_alp_array[6] = 0xff;
	movlw	(0FFh)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	06h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	591
;Dot Matrix.c: 591: num_alp_array[7] = 0xff;
	movlw	(0FFh)
	movwf	(??_choose_num_alphabet+0)+0
	movf	(choose_num_alphabet@num_alp_array),w
	addlw	07h
	movwf	fsr0
	movf	(??_choose_num_alphabet+0)+0,w
	movwf	indf
	line	592
;Dot Matrix.c: 592: break;
	goto	l1013
	line	593
;Dot Matrix.c: 593: default:break;
	
l1012:	
	goto	l1013
	line	594
	
l2796:	
;Dot Matrix.c: 594: }
	goto	l1013
	line	248
	
l974:	
	
l2798:	
	movf	(choose_num_alphabet@num_alp),w
	; Switch size 1, requested type "space"
; Number of cases is 36, Range of values is 48 to 90
; switch strategies available:
; Name         Bytes Cycles
; simple_byte   109    55 (average)
; direct_byte   151    22 (fixed)
;	Chosen strategy is simple_byte

	xorlw	48^0	; case 48
	skipnz
	goto	l2776
	xorlw	49^48	; case 49
	skipnz
	goto	l2778
	xorlw	50^49	; case 50
	skipnz
	goto	l2780
	xorlw	51^50	; case 51
	skipnz
	goto	l2782
	xorlw	52^51	; case 52
	skipnz
	goto	l2784
	xorlw	53^52	; case 53
	skipnz
	goto	l2786
	xorlw	54^53	; case 54
	skipnz
	goto	l2788
	xorlw	55^54	; case 55
	skipnz
	goto	l2790
	xorlw	56^55	; case 56
	skipnz
	goto	l2792
	xorlw	57^56	; case 57
	skipnz
	goto	l2794
	xorlw	65^57	; case 65
	skipnz
	goto	l2710
	xorlw	66^65	; case 66
	skipnz
	goto	l2726
	xorlw	67^66	; case 67
	skipnz
	goto	l2728
	xorlw	68^67	; case 68
	skipnz
	goto	l2730
	xorlw	69^68	; case 69
	skipnz
	goto	l2732
	xorlw	70^69	; case 70
	skipnz
	goto	l2734
	xorlw	71^70	; case 71
	skipnz
	goto	l2736
	xorlw	72^71	; case 72
	skipnz
	goto	l2738
	xorlw	73^72	; case 73
	skipnz
	goto	l2740
	xorlw	74^73	; case 74
	skipnz
	goto	l2742
	xorlw	75^74	; case 75
	skipnz
	goto	l2744
	xorlw	76^75	; case 76
	skipnz
	goto	l2746
	xorlw	77^76	; case 77
	skipnz
	goto	l2748
	xorlw	78^77	; case 78
	skipnz
	goto	l2750
	xorlw	79^78	; case 79
	skipnz
	goto	l2752
	xorlw	80^79	; case 80
	skipnz
	goto	l2754
	xorlw	81^80	; case 81
	skipnz
	goto	l2756
	xorlw	82^81	; case 82
	skipnz
	goto	l2758
	xorlw	83^82	; case 83
	skipnz
	goto	l2760
	xorlw	84^83	; case 84
	skipnz
	goto	l2762
	xorlw	85^84	; case 85
	skipnz
	goto	l2764
	xorlw	86^85	; case 86
	skipnz
	goto	l2766
	xorlw	87^86	; case 87
	skipnz
	goto	l2768
	xorlw	88^87	; case 88
	skipnz
	goto	l2770
	xorlw	89^88	; case 89
	skipnz
	goto	l2772
	xorlw	90^89	; case 90
	skipnz
	goto	l2774
	goto	l1013

	line	594
	
l976:	
	line	595
	
l1013:	
	return
	opt stack 0
GLOBAL	__end_of_choose_num_alphabet
	__end_of_choose_num_alphabet:
;; =============== function _choose_num_alphabet ends ============

	signat	_choose_num_alphabet,8312
	global	_light_a_row
psect	text347,local,class=CODE,delta=2
global __ptext347
__ptext347:

;; *************** function _light_a_row *****************
;; Defined at:
;;		line 131 in file "C:\Users\younce\Documents\Dot Matrix\Dot Matrix.c"
;; Parameters:    Size  Location     Type
;;  row             1    wreg     unsigned char 
;;  color           1    0[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  row             1    1[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         1       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_running_line
;;		_light_all_dot
;; This function uses a non-reentrant model
;;
psect	text347
	file	"C:\Users\younce\Documents\Dot Matrix\Dot Matrix.c"
	line	131
	global	__size_of_light_a_row
	__size_of_light_a_row	equ	__end_of_light_a_row-_light_a_row
	
_light_a_row:	
	opt	stack 6
; Regs used in _light_a_row: [wreg+status,2+status,0]
;light_a_row@row stored from wreg
	movwf	(light_a_row@row)
	line	132
	
l2648:	
;Dot Matrix.c: 132: PORTD = 0xFF;
	movlw	(0FFh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	133
	
l2650:	
;Dot Matrix.c: 133: if(color == GREEN)
	movf	(light_a_row@color),f
	skipz
	goto	u2711
	goto	u2710
u2711:
	goto	l2656
u2710:
	line	135
	
l2652:	
;Dot Matrix.c: 134: {
;Dot Matrix.c: 135: PORTC = 0;
	clrf	(7)	;volatile
	line	136
	
l2654:	
;Dot Matrix.c: 136: PORTA = 0b00001000 | row;
	movf	(light_a_row@row),w
	iorlw	08h
	movwf	(5)	;volatile
	line	137
;Dot Matrix.c: 137: }
	goto	l918
	line	138
	
l915:	
	
l2656:	
;Dot Matrix.c: 138: else if(color == RED)
	movf	(light_a_row@color),w
	xorlw	01h
	skipz
	goto	u2721
	goto	u2720
u2721:
	goto	l918
u2720:
	line	140
	
l2658:	
;Dot Matrix.c: 139: {
;Dot Matrix.c: 140: PORTA = 0;
	clrf	(5)	;volatile
	line	141
	
l2660:	
;Dot Matrix.c: 141: PORTC = 0b00001000 | row;
	movf	(light_a_row@row),w
	iorlw	08h
	movwf	(7)	;volatile
	goto	l918
	line	142
	
l917:	
	goto	l918
	line	143
	
l916:	
	
l918:	
	return
	opt stack 0
GLOBAL	__end_of_light_a_row
	__end_of_light_a_row:
;; =============== function _light_a_row ends ============

	signat	_light_a_row,8312
	global	_light_a_dot
psect	text348,local,class=CODE,delta=2
global __ptext348
__ptext348:

;; *************** function _light_a_dot *****************
;; Defined at:
;;		line 116 in file "C:\Users\younce\Documents\Dot Matrix\Dot Matrix.c"
;; Parameters:    Size  Location     Type
;;  row             1    wreg     unsigned char 
;;  column          1    0[COMMON] unsigned char 
;;  color           1    1[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  row             1    3[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_light_a_column_two_color
;;		_running_dot
;;		_light_a_column
;;		_light_all_dot_2
;; This function uses a non-reentrant model
;;
psect	text348
	file	"C:\Users\younce\Documents\Dot Matrix\Dot Matrix.c"
	line	116
	global	__size_of_light_a_dot
	__size_of_light_a_dot	equ	__end_of_light_a_dot-_light_a_dot
	
_light_a_dot:	
	opt	stack 5
; Regs used in _light_a_dot: [wreg+status,2+status,0]
;light_a_dot@row stored from wreg
	movwf	(light_a_dot@row)
	line	117
	
l2634:	
;Dot Matrix.c: 117: PORTD = 1<<column;
	movlw	(01h)
	movwf	(??_light_a_dot+0)+0
	incf	(light_a_dot@column),w
	goto	u2684
u2685:
	clrc
	rlf	(??_light_a_dot+0)+0,f
u2684:
	addlw	-1
	skipz
	goto	u2685
	movf	0+(??_light_a_dot+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	118
	
l2636:	
;Dot Matrix.c: 118: if(color == GREEN)
	movf	(light_a_dot@color),f
	skipz
	goto	u2691
	goto	u2690
u2691:
	goto	l2642
u2690:
	line	120
	
l2638:	
;Dot Matrix.c: 119: {
;Dot Matrix.c: 120: PORTC = 0;
	clrf	(7)	;volatile
	line	121
	
l2640:	
;Dot Matrix.c: 121: PORTA = 0b00001000 | row;
	movf	(light_a_dot@row),w
	iorlw	08h
	movwf	(5)	;volatile
	line	122
;Dot Matrix.c: 122: }
	goto	l912
	line	123
	
l909:	
	
l2642:	
;Dot Matrix.c: 123: else if(color == RED)
	movf	(light_a_dot@color),w
	xorlw	01h
	skipz
	goto	u2701
	goto	u2700
u2701:
	goto	l912
u2700:
	line	125
	
l2644:	
;Dot Matrix.c: 124: {
;Dot Matrix.c: 125: PORTA = 0;
	clrf	(5)	;volatile
	line	126
	
l2646:	
;Dot Matrix.c: 126: PORTC = 0b00001000 | row;
	movf	(light_a_dot@row),w
	iorlw	08h
	movwf	(7)	;volatile
	goto	l912
	line	127
	
l911:	
	goto	l912
	line	128
	
l910:	
	
l912:	
	return
	opt stack 0
GLOBAL	__end_of_light_a_dot
	__end_of_light_a_dot:
;; =============== function _light_a_dot ends ============

	signat	_light_a_dot,12408
	global	_init
psect	text349,local,class=CODE,delta=2
global __ptext349
__ptext349:

;; *************** function _init *****************
;; Defined at:
;;		line 88 in file "C:\Users\younce\Documents\Dot Matrix\Dot Matrix.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text349
	file	"C:\Users\younce\Documents\Dot Matrix\Dot Matrix.c"
	line	88
	global	__size_of_init
	__size_of_init	equ	__end_of_init-_init
	
_init:	
	opt	stack 7
; Regs used in _init: [wreg+status,2]
	line	89
	
l2612:	
;Dot Matrix.c: 89: TRISA = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(133)^080h	;volatile
	line	90
	
l2614:	
;Dot Matrix.c: 90: TRISB = 0b00000011;
	movlw	(03h)
	movwf	(134)^080h	;volatile
	line	91
	
l2616:	
;Dot Matrix.c: 91: TRISC = 0;
	clrf	(135)^080h	;volatile
	line	92
	
l2618:	
;Dot Matrix.c: 92: TRISD = 0;
	clrf	(136)^080h	;volatile
	line	95
	
l2620:	
;Dot Matrix.c: 95: ANSEL = 0;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(392)^0180h	;volatile
	line	96
	
l2622:	
;Dot Matrix.c: 96: ANSELH = 0;
	clrf	(393)^0180h	;volatile
	line	97
	
l2624:	
;Dot Matrix.c: 97: ADCON0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(31)	;volatile
	line	99
	
l2626:	
;Dot Matrix.c: 99: RB6 = RB7 = 0;
	bcf	(55/8),(55)&7
	bcf	(54/8),(54)&7
	line	100
	
l2628:	
;Dot Matrix.c: 100: PORTA = 0;
	clrf	(5)	;volatile
	line	101
	
l2630:	
;Dot Matrix.c: 101: PORTC = 0;
	clrf	(7)	;volatile
	line	102
	
l2632:	
;Dot Matrix.c: 102: PORTD = 0;
	clrf	(8)	;volatile
	line	103
	
l900:	
	return
	opt stack 0
GLOBAL	__end_of_init
	__end_of_init:
;; =============== function _init ends ============

	signat	_init,88
psect	text350,local,class=CODE,delta=2
global __ptext350
__ptext350:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
