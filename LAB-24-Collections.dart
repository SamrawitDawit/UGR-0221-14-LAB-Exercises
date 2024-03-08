void main() {
  Map<String, int> studentMarks = {};

  studentMarks.putIfAbsent('Samri', () => 100);
  studentMarks.putIfAbsent('Hanim', () => 50);
  studentMarks.putIfAbsent('Hiwi', () => 99);

  print('Student Marks:');
  studentMarks.forEach((name, marks) {
    print('$name: $marks');
  });

  String searchName = 'Samri';
  if (studentMarks.containsKey(searchName)) {
    int marks = studentMarks[searchName]!;
    print('$searchName has $marks marks');
  } else {
    print('$searchName not found');
  }
}
