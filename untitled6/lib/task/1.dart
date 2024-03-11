import 'dart:io';
void main(){

  //1
  print('Hello World\n\n');

  //2
  int a=10,b=20;
  int sum =0;
  sum = a+b;
  print('Sum of a and b is: $sum \n\n');

  //3
  int c=10,d=20;
  int multiplication =1;
  multiplication = c*d;
  print('Multiplication of a and b is: $multiplication');

  //4
  print('Enter the no you want Multiplication table ');
  String userInput = stdin.readLineSync()!;
  int n =  int.tryParse(userInput) ?? 0;
  for(int i = 1;i<=10;i++){
    int table = (n*i);
    print('$n * $i = $table');
  }
  print('\n\n');

  //5
  print('Enter the no you want Multiplication table to start');
  String userInput1 = stdin.readLineSync()!;
  int m =  int.tryParse(userInput1) ?? 0;
  print('Enter the no you want Multiplication table to start');
  String userInput2 = stdin.readLineSync()!;
  int o =  int.tryParse(userInput2) ?? 0;
  for(int j = m;j<=o;j++){
    for(int i = 1;i<=10;i++){
      int table = (j*i);
      print('$j * $i = $table');
    }
    print('\n');
  }

  //6

  int e=4;
  int cube = e*e*e;
  print('Cube is: $cube');
  print('\n\n');

  //7

  String fName = 'Kevin';
  String lName = 'Panchal';

  print('Full Name $fName $lName');

  //8

  stdout.write("Enter principal amount: ");
  double principal = double.parse(stdin.readLineSync()!);

  stdout.write("Enter rate of interest (in percentage): ");
  double rate = double.parse(stdin.readLineSync()!);

  stdout.write("Enter time (in years): ");
  double time = double.parse(stdin.readLineSync()!);

  double simpleInterest = (principal * rate * time) / 100;

  print("Simple Interest: $simpleInterest");

  //10
  print('Enter the no. to check Even or odd');
  String userInput3 = stdin.readLineSync()!;
  int q =  int.tryParse(userInput3) ?? 0;

  if(q%2==0){
    print('$q is even');
  }
  else{
    print('$q is odd');
  }
}
