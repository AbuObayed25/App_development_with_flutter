import 'dart:io';

bool isValidCode(String code) {
  if (code.length != 7 || code[0] != '#') {
    return false;
  }
  for (int i = 1; i < code.length; i++) {
    if (!RegExp(r'[0-9A-Fa-f]').hasMatch(code[i])) {
      return false;
    }
  }
  return true;
}
void main() {
  String? input = stdin.readLineSync();
  if (input != null) {
    bool result = isValidCode(input);
    print(result ? 'true' : 'false');
  }
}