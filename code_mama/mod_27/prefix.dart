// import 'dart:io';
//
// bool isOperator(String c) {
//   return c == '+' || c == '-' || c == '*' || c == '/' || c == '^';
// }
//
// int precedence(String c) {
//   if (c == '+' || c == '-') return 1;
//   if (c == '*' || c == '/') return 2;
//   if (c == '^') return 3;
//   return -1;
// }
//
// String infixToPrefix(String infix) {
//   infix = infix.split('').reversed.join();
//   List<String> stack = [];
//   List<String> result = [];
//
//   for (int i = 0; i < infix.length; i++) {
//     String c = infix[i];
//
//     if (RegExp(r'\d').hasMatch(c)) {
//       result.add(c);
//     } else if (c == ')') {
//       stack.add(c);
//     } else if (c == '(') {
//       while (stack.isNotEmpty && stack.last != ')') {
//         result.add(stack.removeLast());
//       }
//       stack.removeLast();
//     } else if (isOperator(c)) {
//       while (stack.isNotEmpty && precedence(stack.last) >= precedence(c)) {
//         result.add(stack.removeLast());
//       }
//       stack.add(c);
//     }
//   }
//
//   while (stack.isNotEmpty) {
//     result.add(stack.removeLast());
//   }
//
//   return result.reversed.join();
// }
//
// void main() {
//   String infix = stdin.readLineSync()!;
//   print(infixToPrefix(infix));
// }


import 'dart:io';

bool isOperator(String c) {
  return c == '+' || c == '-' || c == '*' || c == '/' || c == '^';
}

int precedence(String c) {
  if (c == '+' || c == '-') return 1;
  if (c == '*' || c == '/') return 2;
  if (c == '^') return 3;
  return -1;
}

String infixToPrefix(String infix) {
  List<String> stack = [];
  List<String> result = [];

  for (int i = infix.length - 1; i >= 0; i--) {
    String c = infix[i];

    if (RegExp(r'\d').hasMatch(c)) {
      result.add(c);
    } else if (c == ')') {
      stack.add(c);
    } else if (c == '(') {
      while (stack.isNotEmpty && stack.last != ')') {
        result.add(stack.removeLast());
      }
      stack.removeLast();
    } else if (isOperator(c)) {
      while (stack.isNotEmpty && precedence(stack.last) > precedence(c)) {
        result.add(stack.removeLast());
      }
      stack.add(c);
    }
  }

  while (stack.isNotEmpty) {
    result.add(stack.removeLast());
  }

  return result.reversed.join();
}

void main() {
  String? infix = stdin.readLineSync();
  if (infix != null && infix.isNotEmpty) {
    print("${infixToPrefix(infix)}");
  } else {
    print("Invalid input.");
  }
}
