#line 1 "G:/Interfacing and microcontroller Lab/PWM Interfacing/PWMinterfacing.c"

void main() {
 int duty=0;
 TRISB=0x00;
 PORTB=0x00;
 TRISC=0x00;
 PORTC=0x00;




 PWM1_INIT(2000);
 TRISD=0xff;
 duty=250;
 PWM1_START();
 PWM1_SET_DUTY(duty);
#line 24 "G:/Interfacing and microcontroller Lab/PWM Interfacing/PWMinterfacing.c"
 while(1){
#line 54 "G:/Interfacing and microcontroller Lab/PWM Interfacing/PWMinterfacing.c"
 portb.f0=1;
 portb.f1=0;
 delay_ms(1000);
 portb.f0=0;
 portb.f1=1;
 delay_ms(5000);



 }

}
