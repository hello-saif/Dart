import 'dart:io';

void main() {
  String input = stdin.readLineSync()!;

  List<String> vowels = ['a', 'e', 'i', 'o', 'u'];

  bool vowelFound = false;

  for (int i = 0; i < input.length; i++) {
    if (vowels.contains(input[i].toLowerCase())) {
      vowelFound = true;
      break;
    }
  }
  if (vowelFound) {
    print("The string contains a vowel.");
  } else {
    print("The string does not contain any vowel.");
  }
}
