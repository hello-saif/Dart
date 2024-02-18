import 'dart:io';

void main() {
  String transformString(String input) {
    StringBuffer result = StringBuffer();

    for (int i = 0; i < input.length; i++) {
      result.write(input[i]);

      if ((i + 1) % 2 == 0 && i < input.length - 1) {
        result.write('x');
      }
    }

    return result.toString();
  }

  String userInput = stdin.readLineSync()!;

  String output = transformString(userInput);
  print('$output');
}
