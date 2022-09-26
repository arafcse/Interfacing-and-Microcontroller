
_main:

;PWMinterfacing.c,2 :: 		void main() {
;PWMinterfacing.c,3 :: 		int duty=0;
	CLRF       main_duty_L0+0
	CLRF       main_duty_L0+1
;PWMinterfacing.c,4 :: 		TRISB=0x00;
	CLRF       TRISB+0
;PWMinterfacing.c,5 :: 		PORTB=0x00;
	CLRF       PORTB+0
;PWMinterfacing.c,6 :: 		TRISC=0x00;
	CLRF       TRISC+0
;PWMinterfacing.c,7 :: 		PORTC=0x00;
	CLRF       PORTC+0
;PWMinterfacing.c,12 :: 		PWM1_INIT(2000);
	BSF        T2CON+0, 0
	BCF        T2CON+0, 1
	MOVLW      249
	MOVWF      PR2+0
	CALL       _PWM1_Init+0
;PWMinterfacing.c,13 :: 		TRISD=0xff;
	MOVLW      255
	MOVWF      TRISD+0
;PWMinterfacing.c,14 :: 		duty=250;
	MOVLW      250
	MOVWF      main_duty_L0+0
	CLRF       main_duty_L0+1
;PWMinterfacing.c,15 :: 		PWM1_START();
	CALL       _PWM1_Start+0
;PWMinterfacing.c,16 :: 		PWM1_SET_DUTY(duty);
	MOVF       main_duty_L0+0, 0
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;PWMinterfacing.c,24 :: 		while(1){
L_main0:
;PWMinterfacing.c,54 :: 		portb.f0=1;
	BSF        PORTB+0, 0
;PWMinterfacing.c,55 :: 		portb.f1=0;
	BCF        PORTB+0, 1
;PWMinterfacing.c,56 :: 		delay_ms(1000);
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
;PWMinterfacing.c,57 :: 		portb.f0=0;
	BCF        PORTB+0, 0
;PWMinterfacing.c,58 :: 		portb.f1=1;
	BSF        PORTB+0, 1
;PWMinterfacing.c,59 :: 		delay_ms(5000);
	MOVLW      51
	MOVWF      R11+0
	MOVLW      187
	MOVWF      R12+0
	MOVLW      223
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
;PWMinterfacing.c,63 :: 		}
	GOTO       L_main0
;PWMinterfacing.c,65 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
