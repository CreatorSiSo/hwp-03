#include <iostream>
#include <fstream>
#include <b15f/b15f.h>

double to_floating_voltage(uint16_t int_voltage) {
  return static_cast<double>(int_voltage) / 1023.0 * 5.0;
}

std::tuple<std::vector<uint16_t>, std::vector<uint16_t>> analogSequence(B15F& drv, uint8_t channel, uint16_t start, uint16_t end, int16_t delta) {
  uint16_t steps = 1023 / 10;
  std::vector<uint16_t> inputs;
  std::vector<uint16_t> measurements(steps);

  for (uint16_t i = start; i < end; i += delta) {
    inputs.push_back(i);
  }

  drv.analogSequence(
    channel, measurements.data(), 0,
    channel, nullptr, 0,
    start,
    delta,
    steps
  );

  return { inputs, measurements };
}


void measure(B15F& drv, uint16_t from, uint16_t to, uint16_t step) {
  bool rising = from < to;
  for (int16_t voltage = from; rising ? voltage <= to : voltage >= to; voltage += rising ? step : -step) {
    drv.analogWrite0(static_cast<uint16_t>(voltage));
    double in = to_floating_voltage(voltage);
    double out = to_floating_voltage(drv.analogRead(0));
    
    std::cout << "In: " << in << ", Out:" << out << "\n";
  }
}

int main() {
  B15F& drv = B15F::getInstance();

  std::cout << "==== Rising ====\n";
  measure(drv, 0, 1023, 30);
  std::cout << "==== Falling ====\n";
  measure(drv, 1023, 0, 30);

  while (true) {
    analogSequence(drv, 0, 0, 1023, 10);
  }
}
