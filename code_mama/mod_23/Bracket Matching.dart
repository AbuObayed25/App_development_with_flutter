import 'dart:io';
import 'dart:collection';

bool areBracketsBalanced(String expression) {
  Stack<String> stack = Stack<String>();

  Map<String, String> matchingBrackets = {
    ')': '(',
    '}': '{',
    ']': '[',
  };

  for (int i = 0; i < expression.length; i++) {
    String char = expression[i];

    if (matchingBrackets.containsValue(char)) {
      stack.push(char);
    } else if (matchingBrackets.containsKey(char)) {

      if (stack.isEmpty || stack.pop() != matchingBrackets[char]) {
        return false;
      }
    }
  }

  return stack.isEmpty;
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

  bool isBalanced = areBracketsBalanced(input);

  if (isBalanced) {
    print("Brackets are balanced.");
  } else {
    print("Brackets are not balanced.");
  }
}
