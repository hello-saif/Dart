import 'dart:io';

void main() {
  Map<String, int> wordToDigit = {
    "zero": 0,
    "one": 1,
    "two": 2,
    "three": 3,
    "four": 4,
    "five": 5,
    "six": 6,
    "seven": 7,
    "eight": 8,
    "nine": 9
  };

  String input = stdin.readLineSync()!.trim().toLowerCase();
  if (wordToDigit.containsKey(input)) {
    int number = wordToDigit[input]!;

    int remainder = number % 2;

    print(remainder);
  } else {
    print('Invalid input');
  }
}
