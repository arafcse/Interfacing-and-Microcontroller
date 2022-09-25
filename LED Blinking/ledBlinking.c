void main() {
           TRISB = 0x00;
           
           Portb = 0x00;
           
           while(1){
           Portb.f0=0xff;
           delay_ms(100);
           Portb.f0=0x00;
           delay_ms(100);
           }
}