import 'dart:io';

void main() {
  stdout.writeln('Insert Number1: ');
  var num1 = int.parse(stdin.readLineSync()!);
  stdout.writeln('Insert NUmber2: ');
  var num2 = int.parse(stdin.readLineSync()!);
  int sum = add(num1, num2);

  print('sum = $sum');
}

int add(int n1, int n2) {
  return n1 + n2;
}
