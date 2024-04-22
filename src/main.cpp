#include <iostream>
#include <fstream>

// #include "b15f_stud.h"
#include "b15f/b15f.h"

double to_floating_voltage(uint16_t int_voltage) {
  return static_cast<double>(int_voltage) / 1023.0 * 5.0;
}

int main() {
  B15F& drv = B15F::getInstance();
  std::ofstream csv_file;
  csv_file.open ("measurements.csv");

  for (uint16_t voltage = 0; voltage <= 1023; voltage += 20) {
    drv.analogWrite0(voltage);
    double in = to_floating_voltage(voltage);
    double out = to_floating_voltage(drv.analogRead(0));
    
    std::cout << "In: " << in << ", Out: " << out << "\n";
    csv_file << in << ";" << out << "\n";
  }
}
