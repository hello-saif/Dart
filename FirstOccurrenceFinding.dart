import 'dart:io';

int binarySearch(List<int> arr, int target) {
  int low = 0;
  int high = arr.length - 1;
  int result = -1;

  while (low <= high) {
    int mid = low + ((high - low) ~/ 2);

    if (arr[mid] == target) {
      result = mid;
      high = mid - 1;
    } else if (arr[mid] < target) {
      low = mid + 1;
    } else {
      high = mid - 1;
    }
  }

  return result;
}

void main() {
  var n = int.parse(stdin.readLineSync()!);
  var inputArray = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  var target = int.parse(stdin.readLineSync()!);

  int result = binarySearch(inputArray, target);

  if (result != -1) {
    print(result);
  } else {
    print("Element not found");
  }
}
