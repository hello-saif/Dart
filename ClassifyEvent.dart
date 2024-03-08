import 'dart:io';

void main() {
  String input = stdin.readLineSync()!;
  List<String> answers = input.split(' ');

  int correctCount = 0;

  for (int i = 0; i < answers.length; i++) {
    int answer = int.parse(answers[i]);
    if (answer % 2 == 0) {
      correctCount++;
    }
  }

  print(correctCount);
}
