import 'dart:io';

void main() {
  List<String> input = stdin.readLineSync()!.split(' ');
  int num1 = int.parse(input[0]);
  int num2 = int.parse(input[1]);
  int num3 = int.parse(input[2]);
  int max = findMax(num1, num2, num3);

  print("$max");
}

int findMax(int a, int b, int c) {
  int max = a;
  if (b > max) {
    max = b;
  }
  if (c > max) {
    max = c;
  }
  return max;
}
