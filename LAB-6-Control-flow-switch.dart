import 'dart:io';

void main() {
  stdout.writeln('Insert grade: ');
  var grade = int.parse(stdin.readLineSync()!);
  grade = grade ~/ 10;
  switch (grade) {
    case 9:
      print('A');
      break;
    case 8:
      print('B');
      break;
    case 7:
      print('C');
      break;
    case 6:
      print('D');
      break;
    default:
      print('F');
  }
}
