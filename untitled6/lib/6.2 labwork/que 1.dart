import 'dart:io';

class Student {
  String name;
  int age;
  String grade;

  // Constructor
  Student(this.name, this.age, this.grade);

  // Method to print student details
  void printDetails() {
    print('Name: $name');
    print('Age: $age');
    print('Grade: $grade');
    print('------------------');
  }
}

void main() {
  List<Student> students = []; // Array of objects

  // Function to get details of N students
  void getStudentDetails(int n) {
    for (int i = 0; i < n; i++) {
      print('Enter details for student ${i + 1}:');
      print('Enter name:');
      String name = stdin.readLineSync()!; // Accepting name
      print('Enter age:');
      int age = int.parse(stdin.readLineSync()!); // Accepting age
      print('Enter grade:');
      String grade = stdin.readLineSync()!; // Accepting grade
      // Creating new student object and adding to the array
      students.add(Student(name, age, grade));
    }
  }

  // Function to print details of all students
  void printAllStudents() {
    print('Details of all students:');
    for (var student in students) {
      student.printDetails();
    }
  }

  // Getting details of N students
  int numberOfStudents = 3; // Change the value of N as needed
  getStudentDetails(numberOfStudents);

  // Printing details of all students
  printAllStudents();
}
smit