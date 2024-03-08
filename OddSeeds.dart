import 'dart:io';

void main() {
  String input = stdin.readLineSync()!;
  List<String> fields = input.split(' ');

  int fieldA = int.parse(fields[0]);
  int fieldB = int.parse(fields[1]);

  int totalPlants = 0;
  if (fieldA >= fieldB) {
    for (int i = fieldA; i >= fieldB; i--) {
      if (i % 2 != 0) {
        totalPlants += i;
      }
    }
  } else {
    for (int i = fieldA; i <= fieldB; i++) {
      if (i % 2 != 0) {
        totalPlants += i;
      }
    }
  }

  print(totalPlants);
}
