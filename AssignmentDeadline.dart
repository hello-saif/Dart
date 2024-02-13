import 'dart:io';

void main() {
  List<String> input = stdin.readLineSync()!.split(' ');
  int N = int.parse(input[0]);
  int A = int.parse(input[1]);
  int B = int.parse(input[2]);

  if (canCompleteAssignments(N, A, B)) {
    print('Yes');
  } else {
    print('No');
  }
}

bool canCompleteAssignments(int N, int A, int B) {
  int total_time_required = A + B;
  if (total_time_required <= N) {
    return true;
  } else {
    return false;
  }
}
