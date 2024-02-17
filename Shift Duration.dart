import 'dart:io';

void main() {
  String input = stdin.readLineSync()!;

  List<String> inputList = input.split(' ');

  int startHour = int.parse(inputList[0]);
  int endHour = int.parse(inputList[1]);

  int duration = calculateWorkShiftDuration(startHour, endHour);

  print(duration);
}

int calculateWorkShiftDuration(int startHour, int endHour) {
  if (startHour == endHour) {
    return 24;
  } else if (startHour < endHour) {
    return endHour - startHour;
  } else {
    return 24 - startHour + endHour;
  }
}
