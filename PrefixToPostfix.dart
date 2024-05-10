import 'dart:io';
import 'dart:collection';

bool isOperator(String c) {
  return c == '+' || c == '-' || c == '*' || c == '/';
}

bool isOperand(String c) {
  return c != '+' && c != '-' && c != '*' && c != '/';
}

String prefixToPostfix(String prefix) {
  List<String> tokens = prefix.split('');
  Queue<String> stack = Queue<String>();

  for (int i = tokens.length - 1; i >= 0; i--) {
    String token = tokens[i];
    if (isOperand(token)) {
      stack.addFirst(token);
    } else if (isOperator(token)) {
      String op1 = stack.removeFirst();
      String op2 = stack.removeFirst();
      stack.addFirst(op1 + op2 + token);
    }
  }
  return stack.first;
}

void main() {
  String input = stdin.readLineSync()!;
  print(prefixToPostfix(input));
}
