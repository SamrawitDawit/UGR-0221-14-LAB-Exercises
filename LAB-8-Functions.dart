import 'dart:io';

void main() {
  stdout.writeln('Insert lower bound of the range: ');
  var lower_bound = int.parse(stdin.readLineSync()!);
  stdout.writeln('Insert upper bound of the range: ');
  var upper_bound = int.parse(stdin.readLineSync()!);

  print("Prime numbers between $lower_bound and $upper_bound:");
  for (int i = lower_bound; i <= upper_bound; i++) {
    if (checker(i)) {
      print(i);
    }
  }
}

bool checker(int num) {
  if (num <= 1) {
    return false;
  }

  for (int i = 2; i <= num / 2; i++) {
    if (num % i == 0) {
      return false;
    }
  }

  return true;
}
