import 'dart:io';

void main() {
  int n = int.parse(stdin.readLineSync()!.trim());

  List<int> arr = stdin.readLineSync()!.trim().split(' ').map(int.parse).toList();

  Set<int> seen = {};

  for (int num in arr) {
    if (seen.contains(num)) {
      print(num);
      return;
    }
    seen.add(num);
  }
}

