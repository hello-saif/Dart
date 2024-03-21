import 'dart:io';

int countUniqueCharacters(String S) {
  Set<String> uniqueCharacters = S.split('').toSet();
  return uniqueCharacters.length;
}

void main() {
  String S = stdin.readLineSync()!;

  int result = countUniqueCharacters(S);

  print(result);
}
