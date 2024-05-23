import 'dart:io';

int minStepsToOne(int n) {
  if (n <= 0) return 0;
  List<int> dp = List.filled(n + 1, double.maxFinite.toInt());

  dp[1] = 0;

  for (int i = 2; i <= n; i++) {
    dp[i] = dp[i - 1] + 1;

    if (i % 2 == 0) {
      dp[i] = dp[i].clamp(0, dp[i ~/ 2] + 1);
    }

    if (i % 3 == 0) {
      dp[i] = dp[i].clamp(0, dp[i ~/ 3] + 1);
    }
  }

  return dp[n];
}

void main() {
  int n = int.parse(stdin.readLineSync()!);
  print(minStepsToOne(n));
}
