import 'dart:io';

void main() {
  List<String> input = stdin.readLineSync()!.split(' ');
  int num1 = int.parse(input[0]);
  int num2 = int.parse(input[1]);

  print("Before swapping: num1 = $num1, num2 = $num2");
  swapping1(num1, num2);
}

void swapping1(int num1, num2) {
  int temp = num1;
  num1 = num2;
  num2 = temp;
  print("After swapping: num1 = $num1, num2 = $num2");
}
