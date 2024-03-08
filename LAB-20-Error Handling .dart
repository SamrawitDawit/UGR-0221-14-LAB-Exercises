double divide(double dividend, double divisor) {
  try {
    if (divisor == 0) {
      throw Exception('Error: A number cannot be divided by 0.');
    }
    return dividend / divisor;
  } catch (e) {
    print(e);
    return double.nan;
  }
}

void main() {
  double num1 = 10;
  double num2 = 0;

  double result = divide(num1, num2);
  print('Result: $result');
}
