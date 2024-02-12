import 'dart:io';

void main() {
  String input = stdin.readLineSync()!;
  List<String> values = input.split(" ");

  int base = int.parse(values[0]);
  int height = int.parse(values[1]);

  double area = calculateArea(base, height);

  print("${area.toInt()}");
}

double calculateArea(int base, int height) {
  return 0.5 * base * height;
}
