class Student {
  int rollNo;
  String name;
  String course;

  Student(this.rollNo, this.name, this.course);

  factory Student.fromData(int rollNo, String name, String course) {
    return Student(rollNo, name, course);
  }
}

void main() {
  List<Student> students = [];

  // Sample data for 30 students
  List<Map<String, dynamic>> studentData = [
    {"rollNo": 1, "name": "Jenil", "course": "Computer Science"},
    {"rollNo": 2, "name": "Mokesh", "course": "Computer Science"},
    {"rollNo": 3, "name": "Jenil", "course": "Computer Science"},
    {"rollNo": 5, "name": "Mokesh", "course": "Computer Science"},
    // like that add all the 30 students
  ];

  // Populate students list using factory constructor
  for (var data in studentData) {
    Student student = Student.fromData(data['rollNo'], data['name'], data['course']);
    students.add(student);
  }

  // Displaying student data
  for (var student in students) {
    print("Roll No: ${student.rollNo}, Name: ${student.name}, Course: ${student.course}");
  }
}
