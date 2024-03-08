import 'dart:io';

//Answer to Exercise 2 

class DivisionByZeroException implements Exception {
  String errorMessage() => 'Error: Division by zero is not allowed';
}

double divideNumbers(double a, double b) {
  if (b == 0) {
    throw DivisionByZeroException();
  }
  return a / b;
}



void main() {

  //Answer to Exercise 1 
  stdout.write('Enter a number: ');

  try {
    String userInput = stdin.readLineSync()!;
    int number = int.parse(userInput);
    print('Converted number: $number');
  } catch (e) {
    print('Invalid input. Please enter a valid number.');
  }

  //Answer to Exercise 2 
  double num1 = 10;
  double num2 = 0;

  try {
    double result = divideNumbers(num1, num2);
    print('Result: $result');
  } catch (e) {
    if (e is DivisionByZeroException) {
      print(e.errorMessage());
    } else {
      print('Error: $e');
    }
  }
  //Answer for Exercise 3 

  String filePath = 'path/to/file.txt';

  try {
    File file = File(filePath);
    String contents = file.readAsStringSync();
    print('File contents:');
    print(contents);
  } catch (e) {
    print('Error: $e');
  }  
}
