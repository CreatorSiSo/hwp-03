#include <iostream>
#include <b15f/b15f.h>


int main() {
  B15F& drv = B15F::getInstance();

  while(true) {
    drv.analogWrite1(1023);
    drv.delay_ms(50);
    drv.analogWrite1(0);
    drv.delay_ms(50);
  }
}