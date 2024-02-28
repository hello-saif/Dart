import 'dart:io';

void main() {
  int year = int.parse(stdin.readLineSync()!);
  if (isLeapYear(year)) {
    print("$year is a leap year.");
  } else {
    print("$year is not a leap year.");
  }
}

bool isLeapYear(int year) {
  if (year % 4 == 0) {
    if (year % 100 == 0 && year % 400 != 0) {
      return false;
    }
    return true;
  }
  return false;
}
