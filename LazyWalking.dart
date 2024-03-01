import 'dart:io';

void main() {
  // Reading input
  String input = stdin.readLineSync()!;
  List<String> inputs = input.split(' ');
  int n = int.parse(inputs[0]);
  int x = int.parse(inputs[1]);

  // Calculating total time
  int totalTime = 0;
  for (int i = 1; i <= n; i++) {
    totalTime += x + (i - 1);
  }

  // Printing output
  print(totalTime);
}
