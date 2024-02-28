import 'dart:io';

void main() {
  int id = int.parse(stdin.readLineSync()!);
  if (0 < id) {
    print("$id is a positive number.");
  } else if (0 > id) {
    print("$id is a negative number.");
  } else {
    print("The number is zero.");
  }
}
