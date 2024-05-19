import 'dart:io';

String removeTrailingZeros(String S) {
  List<String> parts = S.split('.');
  if (parts.length == 1) {
    return parts[0];
  } else {
    String integerPart = parts[0];
    String decimalPart = parts[1].replaceAll(RegExp(r"0*$"), '');
    if (decimalPart.isEmpty) {
      return integerPart;
    } else {
      return '$integerPart.$decimalPart';
    }
  }
}

void main() {
  String S = stdin.readLineSync()!; // Take user input
  print(removeTrailingZeros(S));
}
