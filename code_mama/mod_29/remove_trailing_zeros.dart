import 'dart:io';

void main() {
  String input = stdin.readLineSync()!;

  String result = removeTrailingZeros(input);

  print(result);
}

String removeTrailingZeros(String s) {
  if (!s.contains('.')) return s;

  s = s.replaceAll(RegExp(r'0+$'), '');

  if (s.endsWith('.')) {
    s = s.substring(0, s.length - 1);
  }

  return s;
}