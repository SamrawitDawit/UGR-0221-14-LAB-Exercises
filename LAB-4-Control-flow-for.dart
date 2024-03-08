import 'dart:io';

void main() {
  stdout.writeln('Insert number1: ');
  var num1 = double.parse(stdin.readLineSync()!);
  stdout.writeln('Insert number2: ');
  var num2 = double.parse(stdin.readLineSync()!);
  stdout.writeln('Insert the operation you want to do on the above numbers: ');
  var operation = stdin.readLineSync();

  switch (operation) {
    case '+':
      print(num1 + num2);
      break;
    case '-':
      print(num1 - num2);
      break;
    case '*':
      print(num1 * num2);
      break;
    case '/':
      print(num1 / num2);
      break;
    default:
      print('please enter valid operation');
  }
}
