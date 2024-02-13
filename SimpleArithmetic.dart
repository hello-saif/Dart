import 'dart:io';

void main() {
  String input = stdin.readLineSync()!;

  String digit1 = input[0];
  String operator = input[2];
  String digit2 = input[4];

  int num1 = int.parse(digit1);
  int num2 = int.parse(digit2);

  int result;
  switch (operator) {
    case '+':
      result = num1 + num2;
      break;
    case '-':
      result = num1 - num2;
      break;
    case '*':
      result = num1 * num2;
      break;
    case '/':
      result = num1 ~/ num2;
      break;
    default:
      print("Invalid operator");
      return;
  }

  print(result);
}
