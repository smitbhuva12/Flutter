class Person {
  String name = '';
  int age = 0;

  void setName(String name) {
    this.name = name;
  }

  void setAge(int age) {
    this.age = age;
  }

  void displayDetails() {
    print('Name: $name');
    print('Age: $age');
  }
}

void main() {
  Person person = Person();

  // Using cascade operator to set properties and call methods
  person
    ..setName('Kevin')
    ..setAge(30)
    ..displayDetails();
}
