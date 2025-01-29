import 'dart:io';

int precedence(String op) {
  if (op == '+' || op == '-') return 1;
  if (op == '*' || op == '/') return 2;
  return 0;
}

bool isOperator(String c) {
  return c == '+' || c == '-' || c == '*' || c == '/';
}

String infixToPostfix(String expression) {
  List<String> output = [];
  List<String> stack = [];

  for (int i = 0; i < expression.length; i++) {
    String char = expression[i];

    if (RegExp(r'\d').hasMatch(char)) {
      output.add(char);
    } else if (char == '(') {
      stack.add(char);
    } else if (char == ')') {
      while (stack.isNotEmpty && stack.last != '(') {
        output.add(stack.removeLast());
      }
      if (stack.isNotEmpty && stack.last == '(') {
        stack.removeLast();
      }
    } else if (isOperator(char)) {
      while (stack.isNotEmpty && precedence(stack.last) >= precedence(char)) {
        output.add(stack.removeLast());
      }
      stack.add(char);
    }
  }

  while (stack.isNotEmpty) {
    output.add(stack.removeLast());
  }

  return output.join('');
}

void main() {
  String? input = stdin.readLineSync();
  if (input != null && input.isNotEmpty) {
    print("${infixToPostfix(input)}");
  } else {
    print("Invalid input");
  }
}