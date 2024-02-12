import 'dart:io';

void main() {
  String input = stdin.readLineSync()!;
  List<String> numbers = input.split(" ");

  int num1 = int.parse(numbers[0]);
  int num2 = int.parse(numbers[1]);

  int difference = findDifference(num1, num2);

  print("$difference");
}

int findDifference(int a, int b) {
  return a - b;
}
