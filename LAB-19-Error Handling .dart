import 'dart:io';

void main() {
  print('Insert a number:');
  String input = stdin.readLineSync()!;
  
  try {
    int num = int.parse(input);
    print('number: $num');
  } catch (e) {
    print('Invalid input. Please enter a valid number.');
  }
}
