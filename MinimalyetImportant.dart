import 'dart:io';

void main() {
  String input = stdin.readLineSync()!;
  List<String> numbers = input.split(" ");

  int num1 = int.parse(numbers[0]);
  int num2 = int.parse(numbers[1]);
  int num3 = int.parse(numbers[2]);

  int minimum = findMinimum(num1, num2, num3);

  print("$minimum");
}

int findMinimum(int a, int b, int c) {
  if (a <= b && a <= c) {
    return a;
  } else if (b <= a && b <= c) {
    return b;
  } else {
    return c;
  }
}
