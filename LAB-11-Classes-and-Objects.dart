class Person {
  String full_name;
  int age;
  String address;

  Person(this.full_name, this.age, this.address);
}

class Student extends Person {
  int rollNumber;
  List<int> marks;
  Student(
      String full_name, int age, String address, this.rollNumber, this.marks)
      : super(full_name, age, address);
  int total_marks() {
    int sum = 0;
    for (int mark in marks) {
      sum += mark;
    }
    return sum;
  }

  double average_marks() {
    int total = total_marks();
    double average = total / marks.length;
    return average;
  }
}

void main() {
  Student Samri = Student('Samrawit Dawit', 20, '4 kilo', 7, [90, 100, 80]);

  print(Samri.total_marks());
  print(Samri.average_marks());
}
