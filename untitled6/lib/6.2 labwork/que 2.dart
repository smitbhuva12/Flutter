import 'dart:io';

class Employee {
  String name;
  double salary;
  String designation;

  // Constructor
  Employee(this.name, this.salary, this.designation);
}

void main() {
  List<Employee> employees = [];

  // Function to get details of N employees
  void getEmployeeDetails(int n) {
    for (int i = 0; i < n; i++) {
      print('Enter details for employee ${i + 1}:');
      print('Enter name:');
      String name = stdin.readLineSync()!;
      print('Enter salary:');
      double salary = double.parse(stdin.readLineSync()!);
      print('Enter designation:');
      String designation = stdin.readLineSync()!;
      // Creating new employee object and adding to the list
      employees.add(Employee(name, salary, designation));
    }
  }

  // Function to print details of all employees sorted by name
  void printAllEmployees() {
    // Sort employees by name
    employees.sort((a, b) => a.name.compareTo(b.name));

    print('Employee details in ascending order of names:');
    for (var employee in employees) {
      print('Name: ${employee.name}');
      print('Salary: ${employee.salary}');
      print('Designation: ${employee.designation}');
      print('------------------');
    }
  }

  // Getting details of N employees
  int numberOfEmployees = 3; // Change the value of N as needed
  getEmployeeDetails(numberOfEmployees);

  // Printing details of all employees
  printAllEmployees();
}
