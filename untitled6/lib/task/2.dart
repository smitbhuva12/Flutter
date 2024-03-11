import 'dart:io';
void main() {

  print('Enter the Op(+,-,*,/): ');
  String op = stdin.readLineSync()!;
  switch (op) {
    case '+':
      print('Enter the Value of A');
      double a = double.parse(stdin.readLineSync()!);

      print('Enter the Value of B');
      double b = double.parse(stdin.readLineSync()!);
      double sum = a + b;
      print('Sum of A + B is: $sum');

    case '-':
      print('Enter the Value of A');
      double a = double.parse(stdin.readLineSync()!);

      print('Enter the Value of B');
      double b = double.parse(stdin.readLineSync()!);
      double sub = a - b;
      print('Sub of A - B is: $sub');

    case '*':
      print('Enter the Value of A');
      double a = double.parse(stdin.readLineSync()!);

      print('Enter the Value of B');
      double b = double.parse(stdin.readLineSync()!);
      double mul = a * b;
      print('mul of A * B is: $mul');

    case '/':
      print('Enter the Value of A');
      double a = double.parse(stdin.readLineSync()!);

      print('Enter the Value of B');
      double b = double.parse(stdin.readLineSync()!);
      double div = a / b;
      print('Div of A / B is: $div');

    default:
      print('Enter the only +,-,*,/');
  }

}
