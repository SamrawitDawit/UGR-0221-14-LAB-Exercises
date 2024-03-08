abstract class Shape {
  double calculateArea();
}

class Circle extends Shape {
  double radius;

  Circle(this.radius);

  @override
  double calculateArea() {
    return 3.14 * radius * radius;
  }
}

class Square extends Shape {
  double side;

  Square(this.side);

  @override
  double calculateArea() {
    return side * side;
  }
}

void main() {
  Circle my_circle = Circle(5);
  Square my_square = Square(4);

  double circle_area = my_circle.calculateArea();
  double square_area = my_square.calculateArea();
  print(circle_area)
  print(square_area)
}
