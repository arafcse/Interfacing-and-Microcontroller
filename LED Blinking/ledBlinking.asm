
_main:

;ledBlinking.c,1 :: 		void main() {
;ledBlinking.c,2 :: 		TRISB = 0x00;
	CLRF       TRISB+0
;ledBlinking.c,4 :: 		Portb = 0x00;
	CLRF       PORTB+0
;ledBlinking.c,6 :: 		while(1){
L_main0:
;ledBlinking.c,7 :: 		Portb.f0=0xff;
	BSF        PORTB+0, 0
;ledBlinking.c,8 :: 		delay_ms(100);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_main2:
	DECFSZ     R13+0, 1
	GOTO       L_main2
	DECFSZ     R12+0, 1
	GOTO       L_main2
	DECFSZ     R11+0, 1
	GOTO       L_main2
	NOP
;ledBlinking.c,9 :: 		Portb.f0=0x00;
	BCF        PORTB+0, 0
;ledBlinking.c,10 :: 		delay_ms(100);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_main3:
	DECFSZ     R13+0, 1
	GOTO       L_main3
	DECFSZ     R12+0, 1
	GOTO       L_main3
	DECFSZ     R11+0, 1
	GOTO       L_main3
	NOP
;ledBlinking.c,11 :: 		}
	GOTO       L_main0
;ledBlinking.c,12 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
