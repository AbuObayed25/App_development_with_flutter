import 'dart:io';

void main() {
  String input = stdin.readLineSync()!;

  bool isRepdigit(String num) {
    return num.split('').toSet().length == 1;
  }

  print(isRepdigit(input));
}