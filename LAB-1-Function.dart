import 'dart:math';

//Function for Exercise 1
int sumNumber(int a, int b) {
  return a + b;
}

//Function for Exercise 2
isPrime(int number) {
  if (number < 2) {
    return false;
  }

  for (int i = 2; i <= sqrt(number); i++) {
    if (number % i == 0) {
      return false;
    }
  }

  return true;
}
//Function for Exercise 3 
String reverseString(String input) {
  String reversed = '';
  for (int i = input.length - 1; i >= 0; i--) {
    reversed += input[i];
  }
  return reversed;
}

void main() {

  //Function call for Exercise 1 
  int num1 = 5;
  int num2 = 7;
  int sum = sumNumber(num1, num2);
  print('The sum of $num1 and $num2 is: $sum');

  //Function call for  Exercise 2

  int start = 11;
  int end = 20;

  print('Prime numbers between $start and $end:');
  for (int i = start; i <= end; i++) {
    if (isPrime(i)) {
      print(i);
    }
  }

  //Function call for Exercise 3 
  String input = 'Sifen Beshada';
  String reversedString = reverseString(input);
  print('Original string: $input');
  print('Reversed string: $reversedString');

}