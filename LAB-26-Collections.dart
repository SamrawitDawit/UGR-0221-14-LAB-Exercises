class Student {
  String name;
  List<double> marks;

  Student(this.name, this.marks);

  double calculateAverageMark() {
    if (marks.isEmpty) {
      return 0.0;
    }

    double total = marks.reduce((value, element) => value + element);
    double average = total / marks.length;
    return average;
  }
}

void main() {
  Student student = Student('Abebe Kebede', [77, 66, 99, 100]);
  double averageMark = student.calculateAverageMark();
  print('Average mark for ${student.name}: $averageMark');
}
