import 'dart:io';

void main() {
  stdout.writeln('Insert a word: ');
  var word = stdin.readLineSync();
  String reversed = reverse(word);
  print(reversed);
}

String reverse(input) {
  String reversed = '';

  for (int i = input.length - 1; i >= 0; i--) {
    reversed += input[i];
  }

  return reversed;
}
