import 'dart:io';

void main() {
  //Answer to Write a program that checks if a given number is even or odd 
  //using an if statement

  print('Enter a number, Check if it even or odd: ');
  int number = int.parse(stdin.readLineSync()!);

  if (number % 2 == 0) {
    print('$number is even.');
  } else {
    print('$number is odd.');
  }

  //Answer to Exercise 2: Create a for loop to print the first 10 natural numbers
   print("Below are first 10 natural numbers");
  for (int num = 1; num <= 10; num++) {
    print(num);
  }

  //Answer for Exercie 3:  Implement a simple calculator using a switch statement to handle
  //addition ,subtraction, multiplication, and division

  print('Enter the first number: ');
  double num1 = double.parse(stdin.readLineSync()!);

  print('Enter an operator (+, -, *, /): ');
  String operator = stdin.readLineSync()!;

  print('Enter the second number: ');
  double num2 = double.parse(stdin.readLineSync()!);

  double result;

  switch (operator) {
    case '+':
      result = num1 + num2;
      break;
    case '-':
      result = num1 - num2;
      break;
    case '*':
      result = num1 * num2;
      break;
    case '/':
      result = num1 / num2;
      break;
    default:
      print('Your input operator is invalid');
      return;
  }
  print('Result: $result');

  //Answer to  Write a program that takes a grade as input and uses a switch
  //statement to display the corresponding letter grade (A, B, C, etc.)

  print('Enter your score: ');
  int score = int.parse(stdin.readLineSync()!);

  String grade;

  switch (score) {
    case >100:
      grade = "Invalid score input ";
    case <0:
      grade= "Invalid score input";
    case >= 90 :
      grade = 'A';
      break;
    case >= 80:
      grade = 'B';
      break;
    case >= 70:
      grade= 'C';
      break;
    case >= 60:
      grade = 'D';
      break;
    default:
      grade = 'F';
  }

  print('Your grade is: $grade');

}