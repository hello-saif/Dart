import 'dart:io';

void main() {
  const double pi = 3.14;
  double id = double.parse(stdin.readLineSync()!);

  double area = pi * (id * id);
  String roundedArea = area.toStringAsFixed(2);
  print("The area of the circle is $roundedArea square units.");
}
