import 'dart:io';
void main() {
  Map<int, int> productPrices = {
    101: 10,
    202: 25,
    303: 5,
  };
  print('Enter the product ID and quantity:');
  List<String>? input = stdin.readLineSync()?.split(' ');

  if (input != null && input.length == 2) {
    int? productId = int.tryParse(input[0]);
    int? quantity = int.tryParse(input[1]);

    if (productId != null && quantity != null && productPrices.containsKey(productId)) {
      int totalCost = productPrices[productId]! * quantity;
      print(totalCost);
    } else {
      print('Invalid product ID or quantity.');
    }
  } else {
    print('Invalid input format.');
  }
}
