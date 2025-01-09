import 'dart:io';

void main() {
  String? input = stdin.readLineSync();

  List<String> numbers = input!.split(' ');

  int num1 = int.parse(numbers[0]);
  int num2 = int.parse(numbers[1]);
  int num3 = int.parse(numbers[2]);

  int maxNum = findMax(num1, num2, num3);

  print(maxNum);
}

int findMax(int num1, int num2, int num3) {
  int maxNum = num1;

  if (num2 > maxNum) {
    maxNum = num2;
  }

  if (num3 > maxNum) {
    maxNum = num3;
  }

  return maxNum;
}