import 'dart:io';

int findRemainder(int dividend, int divisor) {
  return dividend % divisor;
}

void main() {
  stdout.write("Enter two numbers: ");
  String input = stdin.readLineSync()!;
  List<String> numbers = input.split(" ");
  int num1 = int.parse(numbers[0]);
  int num2 = int.parse(numbers[1]);

  int remainder = findRemainder(num1, num2);
  print("Output:");
  print(remainder);
}
