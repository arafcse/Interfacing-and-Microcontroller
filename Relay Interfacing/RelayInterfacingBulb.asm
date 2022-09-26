
_main:

;RelayInterfacingBulb.c,1 :: 		void main() {
;RelayInterfacingBulb.c,3 :: 		TRISC=0x00;
	CLRF       TRISC+0
;RelayInterfacingBulb.c,4 :: 		PORTC=0x00;
	CLRF       PORTC+0
;RelayInterfacingBulb.c,6 :: 		while(1){
L_main0:
;RelayInterfacingBulb.c,8 :: 		portc.f0=0xff;
	BSF        PORTC+0, 0
;RelayInterfacingBulb.c,9 :: 		delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main2:
	DECFSZ     R13+0, 1
	GOTO       L_main2
	DECFSZ     R12+0, 1
	GOTO       L_main2
	DECFSZ     R11+0, 1
	GOTO       L_main2
	NOP
	NOP
;RelayInterfacingBulb.c,10 :: 		portc.f0=0x00;
	BCF        PORTC+0, 0
;RelayInterfacingBulb.c,11 :: 		delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main3:
	DECFSZ     R13+0, 1
	GOTO       L_main3
	DECFSZ     R12+0, 1
	GOTO       L_main3
	DECFSZ     R11+0, 1
	GOTO       L_main3
	NOP
	NOP
;RelayInterfacingBulb.c,13 :: 		}
	GOTO       L_main0
;RelayInterfacingBulb.c,15 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
