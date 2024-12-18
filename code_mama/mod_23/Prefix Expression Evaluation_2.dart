import 'dart:io';
import 'dart:collection';

int evaluatePostfix(String expression) {

  Stack<int> stack = Stack<int>();

  for (int i = 0; i < expression.length; i++) {
    String char = expression[i];


    if (RegExp(r'[0-9]').hasMatch(char)) {
      stack.push(int.parse(char));
    } else if (isOperator(char)) {

      int operand2 = stack.pop();
      int operand1 = stack.pop();

      int result = performOperation(char, operand1, operand2);
      stack.push(result);
    }
  }

  return stack.pop();
}

bool isOperator(String char) {
  return char == '+' || char == '-' || char == '*' || char == '/';
}

int performOperation(String operator, int operand1, int operand2) {
  switch (operator) {
    case '+':
      return operand1 + operand2;
    case '-':
      return operand1 - operand2;
    case '*':
      return operand1 * operand2;
    case '/':
      if (operand2 == 0) {
        throw ArgumentError("Division by zero");
      }
      return operand1 ~/ operand2;
    default:
      throw ArgumentError("Invalid operator");
  }
}

class Stack<T> {
  final ListQueue<T> _list = ListQueue<T>();

  void push(T value) => _list.addLast(value);

  T pop() => _list.removeLast();

  bool get isEmpty => _list.isEmpty;
}

void main() {
  String? input = stdin.readLineSync();

  if (input == null || input.isEmpty) {
    print("Invalid input");
    return;
  }

  try {
    int result = evaluatePostfix(input);
    print("$result");
  } catch (e) {
    print("Error: ${e.toString()}");
  }
}
