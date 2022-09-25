
_main:

;sevenSegment.c,3 :: 		void main(){
;sevenSegment.c,4 :: 		int i = 0;
	CLRF       main_i_L0+0
	CLRF       main_i_L0+1
;sevenSegment.c,5 :: 		trisb = 0x00;
	CLRF       TRISB+0
;sevenSegment.c,6 :: 		portb = 0x00;
	CLRF       PORTB+0
;sevenSegment.c,7 :: 		trisd = 0xFF;
	MOVLW      255
	MOVWF      TRISD+0
;sevenSegment.c,8 :: 		while(1){
L_main0:
;sevenSegment.c,9 :: 		if(portd.f0==1){
	BTFSS      PORTD+0, 0
	GOTO       L_main2
;sevenSegment.c,10 :: 		delay_ms(200);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      8
	MOVWF      R12+0
	MOVLW      119
	MOVWF      R13+0
L_main3:
	DECFSZ     R13+0, 1
	GOTO       L_main3
	DECFSZ     R12+0, 1
	GOTO       L_main3
	DECFSZ     R11+0, 1
	GOTO       L_main3
;sevenSegment.c,11 :: 		if(i<9){
	MOVLW      128
	XORWF      main_i_L0+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main9
	MOVLW      9
	SUBWF      main_i_L0+0, 0
L__main9:
	BTFSC      STATUS+0, 0
	GOTO       L_main4
;sevenSegment.c,12 :: 		i++;
	INCF       main_i_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       main_i_L0+1, 1
;sevenSegment.c,13 :: 		}
L_main4:
;sevenSegment.c,14 :: 		}
L_main2:
;sevenSegment.c,15 :: 		if(portd.f1==1){
	BTFSS      PORTD+0, 1
	GOTO       L_main5
;sevenSegment.c,16 :: 		delay_ms(200);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      8
	MOVWF      R12+0
	MOVLW      119
	MOVWF      R13+0
L_main6:
	DECFSZ     R13+0, 1
	GOTO       L_main6
	DECFSZ     R12+0, 1
	GOTO       L_main6
	DECFSZ     R11+0, 1
	GOTO       L_main6
;sevenSegment.c,17 :: 		if(i>0){
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      main_i_L0+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main10
	MOVF       main_i_L0+0, 0
	SUBLW      0
L__main10:
	BTFSC      STATUS+0, 0
	GOTO       L_main7
;sevenSegment.c,18 :: 		i--;
	MOVLW      1
	SUBWF      main_i_L0+0, 1
	BTFSS      STATUS+0, 0
	DECF       main_i_L0+1, 1
;sevenSegment.c,19 :: 		}
L_main7:
;sevenSegment.c,20 :: 		}
L_main5:
;sevenSegment.c,21 :: 		portb=CC[i];
	MOVF       main_i_L0+0, 0
	ADDLW      _CC+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
;sevenSegment.c,22 :: 		}
	GOTO       L_main0
;sevenSegment.c,23 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
