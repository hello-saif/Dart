import 'dart:io';

void main() {
  double Calsius = double.parse(stdin.readLineSync()!);
  double Fahrenheit = (Calsius * 9 / 5) + 32;
  print("The temperature in Fahrenheit is: ${Fahrenheit.toStringAsFixed(2)}");
}
