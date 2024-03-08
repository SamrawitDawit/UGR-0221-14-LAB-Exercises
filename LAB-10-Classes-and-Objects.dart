class Person {
  String full_name;
  int age;
  String address;

  Person(this.full_name, this.age, this.address);
}

void main() {
  Person Samri = Person('Samrawit Dawit', 20, '4 kilo');
  Person Someone = Person('Someone', 23, 'Somewhere');

  print(Samri.age);
  Someone.address = 'Addis Ababa';
  print(Someone.address);
}
