import 'dart:io';

void main() {
  List<int> inputs = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  int W = inputs[0];
  int S = inputs[1];
  int C = inputs[2];

  if (isCakeAcceptable(W, S, C)) {
    print('Yes');
  } else {
    print('No');
  }
}

bool isCakeAcceptable(int W, int S, int C) {
  return (W >= 200 && W <= 300 && S >= 50 && C >= 150);
}
