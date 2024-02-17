import 'dart:io';

int countStringsWithT() {
  int count = 0;
  for (int i = 0; i < 10; i++) {
    String string = stdin.readLineSync()!.trim();
    if (string.contains('T')) {
      count++;
    }
  }
  return count;
}

void main() {
  print(countStringsWithT());
}
