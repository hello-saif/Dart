import 'dart:io';

void main() {
  // Reading input
  int n = int.parse(stdin.readLineSync()!);
  List<String> strings = [];
  for (int i = 0; i < n; i++) {
    strings.add(stdin.readLineSync()!);
  }

  // Finding full forms of FFT
  List<String> fullForms = [];
  int count = 0;
  for (int i = 0; i < n - 2; i++) {
    if (strings[i][0] == 'F' &&
        strings[i + 1][0] == 'F' &&
        strings[i + 2][0] == 'T') {
      fullForms.add('${strings[i]} ${strings[i + 1]} ${strings[i + 2]}');
      count++;
    }
  }

  // Printing output
  print(count);
  for (String form in fullForms) {
    print(form);
  }
}
