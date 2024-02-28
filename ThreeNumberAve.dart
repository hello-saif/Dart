import 'dart:io';

void main() {
  List<String> input = stdin.readLineSync()!.split(' ');
  int N = int.parse(input[0]);
  int A = int.parse(input[1]);
  int B = int.parse(input[2]);

  double ave = (N + A + B) / 3;
  print("Average:${ave.toStringAsFixed(2)} ");
}
