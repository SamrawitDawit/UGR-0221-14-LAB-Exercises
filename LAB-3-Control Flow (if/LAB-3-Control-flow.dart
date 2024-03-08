import 'dart:io';
void main() {
  stdout.writeln('Insert a number: ');
  var number = int.parse(stdin.readLineSync()!);
  if (number % 2 == 0) {
    print('$number is even');
  } else {}
  print('$number is odd');
}
