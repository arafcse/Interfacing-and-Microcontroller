#line 1 "G:/Interfacing and microcontroller Lab/2 Digit Seven Segment/twoDigitSevenSegment.c"
char CA[]={0xC0,0xF9,0xA4,0xB0,0x99,0x92,0x82,0xF8,0x80,0x90} ;
void main() {
 int i=0,j,leftDigit,rightDigit;
 TRISB=0x00;
 PORTB=0x00;
 TRISD=0x00;
 PORTD=0x00;

 while(1)
 {
 delay_ms(200);
 for(i=0;i<100;i++){
 leftDigit=i/10;
 rightDigit=i%10;

 for(j=0;j<50;j++)
 {
 portd.f0=1;
 portb=CA[leftDigit];
 delay_ms(10);
 portd.f0=0;

 portd.f1=1;
 portb=CA[rightDigit];
 delay_ms(10);
 portd.f1=0;
 }
 }
 }


}
