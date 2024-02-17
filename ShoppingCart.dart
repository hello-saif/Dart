import 'dart:io';

void main() {
  Map<int, int> productPrices = {
    101: 10,
    202: 25,
    303: 5,
  };

  String input = stdin.readLineSync()!;
  List<String> inputList = input.split(' ');

  int productId = int.parse(inputList[0]);
  int quantity = int.parse(inputList[1]);

  int totalCost = productPrices[productId]! * quantity;

  print(totalCost);
}
