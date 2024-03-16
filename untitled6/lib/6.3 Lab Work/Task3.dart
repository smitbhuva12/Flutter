import 'dart:io';

class User {
  String email;
  String password;

  User(this.email, this.password);
}

void main() {
  List<Map<String, dynamic>> usersData = [];

  while (true) {
    print('\nMenu:');
    print('1. Register');
    print('2. Login');
    print('3. Forgot Password');
    print('4. Exit');
    print('Enter your choice:');
    String choice = stdin.readLineSync()!;

    switch (choice) {
      case '1':
        registerUser(usersData);
        break;
      case '2':
        loginUser(usersData);
        break;
      case '3':
        forgotPassword(usersData);
        break;
      case '4':
        print('Exiting program...');
        return;
      default:
        print('Invalid choice. Please try again.');
    }
  }
}

void registerUser(List<Map<String, dynamic>> usersData) {
  print('\nEnter email:');
  String email = stdin.readLineSync()!;
  print('Enter password:');
  String password = stdin.readLineSync()!;

  usersData.add({'email': email, 'password': password});
  print('User registered successfully!');
}

void loginUser(List<Map<String, dynamic>> usersData) {
  print('\nEnter email:');
  String email = stdin.readLineSync()!;
  print('Enter password:');
  String password = stdin.readLineSync()!;

  bool found = false;
  for (var user in usersData) {
    if (user['email'] == email && user['password'] == password) {
      found = true;
      print('Login successful!');
      break;
    }
  }
  if (!found) {
    print('Invalid email or password. Please try again.');
  }
}

void forgotPassword(List<Map<String, dynamic>> usersData) {
  print('\nEnter email to reset password:');
  String email = stdin.readLineSync()!;

  bool found = false;
  for (var user in usersData) {
    if (user['email'] == email) {
      found = true;
      print('Enter new password:');
      user['password'] = stdin.readLineSync()!;
      print('Password reset successfully!');
      break;
    }
  }
  if (!found) {
    print('Email not found. Please register first.');
  }
}
