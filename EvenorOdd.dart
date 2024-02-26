import 'dart:io';

void main() {
  int number = int.parse(stdin.readLineSync()!);
  EvenOrOdd(number);
}
void EvenOrOdd(int number) {
  if (number % 2 == 0) {
    print('$number is an even number.');
  } else {
    print('$number is an odd number.');
  }
}
