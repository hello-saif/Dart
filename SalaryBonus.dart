import 'dart:io';

void main() {
  double salary = double.parse(stdin.readLineSync()!);

  int bonus = (salary * 0.10).toInt();

  print('$bonus');
}
