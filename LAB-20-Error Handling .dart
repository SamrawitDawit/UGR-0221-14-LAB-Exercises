double divide(double dividend, double divisor) {
  try {
    return dividend / divisor;
  } catch (e) {
    if (e is DivisionByZeroError) {
      print('Error: A number can not be devided by 0.');
    } else {
      print('Something went wrong.');
    }
    return double.nan;
  }
}

void main() {
  double num1 = 10;
  double num2 = 0;

  double result = divide(num1, num2);
  print('Result: $result');
}
