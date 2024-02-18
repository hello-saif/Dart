import 'dart:io';

void main() {
  stdout.write('');
  String? input = stdin.readLineSync();

  if (input != null) {
    String output = transformString(input);
    print('$output');
  } else {
    print("Error: Unable to read input.");
  }
}

String transformString(String input) {
  StringBuffer result = StringBuffer();

  for (int i = 0; i < input.length; i++) {
    if ((i + 1) % 3 == 0 && input[i].toUpperCase() != input[i].toLowerCase()) {
      result.write(input[i].toUpperCase());
    } else {
      result.write(input[i]);
    }
  }

  return result.toString();
}
