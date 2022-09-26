#line 1 "G:/Interfacing and microcontroller Lab/Analog to Digital Conversion/analogToDigitalConversion.c"
 int valADC;
 char x[4];

void main() {


UART1_INIT(9600);

ADC_init();

while(1){

 valADC=ADC_Read(0);

 IntToStr(valADC,x);

 UART1_Write_Text("Analog value is=");
 UART1_Write_Text(x);

 strcpy(x,"");
 UART1_Write(13);
 delay_ms(1000);
}

}
