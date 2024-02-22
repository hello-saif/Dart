import 'dart:io';

int calculateRectangleArea(int length, int width) {
  return length * width;
}

void main() {
  String input = stdin.readLineSync()!;
  List<String> dimensions = input.split(" ");
  int length = int.parse(dimensions[0]);
  int width = int.parse(dimensions[1]);

  int area = calculateRectangleArea(length, width);
  print(area);
}
