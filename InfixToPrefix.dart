import 'dart:io';

bool isOperator(String c) {
  return ['+', '-', '*', '/', '^'].contains(c);
}

bool isOperand(String c) {
  return RegExp(r"^[0-9]$").hasMatch(c);
}

int precedence(String op) {
  if (op == '+' || op == '-') {
    return 1;
  }
  if (op == '*' || op == '/') {
    return 2;
  }
  if (op == '^') {
    return 3;
  }
  return 0;
}

String infixToPostfix(String expression) {
  List<String> stack = [];
  String postfix = '';
  for (var char in expression.runes) {
    String c = String.fromCharCode(char);
    if (c == '(') {
      stack.add(c);
    } else if (c == ')') {
      while (stack.isNotEmpty && stack.last != '(') {
        postfix += stack.removeLast();
      }
      stack.removeLast(); // pop '('
    } else if (isOperator(c)) {
      while (stack.isNotEmpty &&
          precedence(stack.last) > precedence(c) &&
          stack.last != '(') {
        postfix += stack.removeLast();
      }
      stack.add(c);
    } else if (isOperand(c)) {
      postfix += c;
    }
  }
  while (stack.isNotEmpty) {
    postfix += stack.removeLast();
  }
  return postfix;
}

String infixToPrefix(String expression) {
  String reversedExpression = expression.split('').reversed.join();
  reversedExpression = reversedExpression
      .replaceAll('(', '\$')
      .replaceAll(')', '(')
      .replaceAll('\$', ')');
  String postfix = infixToPostfix(reversedExpression);
  String prefix = postfix.split('').reversed.join();
  return prefix;
}

void main() {
  String infixExpression = stdin.readLineSync()!;
  String prefixExpression = infixToPrefix(infixExpression);
  print("$prefixExpression");
}
