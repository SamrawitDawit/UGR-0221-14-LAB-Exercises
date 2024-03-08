void main() {
  const int c = 299792458;
  stdout.writeln('Insert distance: ');
  var s = double.parse(stdin.readLineSync()!);
  double t = s / c;
  print('time to travel in $s distance is $t m/s');
}
