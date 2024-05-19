import 'dart:io';

bool isRepdigit(int N) {
  String numberAsString = N.toString();

  for (int i = 1; i < numberAsString.length; i++) {
    if (numberAsString[i] != numberAsString[0]) {
      return false;
    }
  }

  return true;
}

void main() {
  int N = int.parse(stdin.readLineSync()!); // Take user input

  print(isRepdigit(N));
}
