import 'dart:io';

void main() {
  int imageWidth = int.parse(stdin.readLineSync()!);

  int containerWidth = 1000;
  int leftMargin = (containerWidth - imageWidth) ~/ 2;

  leftMargin = leftMargin < 0 ? 0 : leftMargin;

  print(leftMargin);
}
