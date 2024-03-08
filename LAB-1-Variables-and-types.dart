import 'dart:io';

void main() {
  //Answer for Exercise 1, create variables to store your name, age, and favorite color, 
  //and print them to the console using string interpolation

  String fullname = 'Sifen Beshada Balcha';
  int age = 20;
  String favoriteColor = 'Black and Pink';

  print('Name: $fullname');
  print('Age: $age');
  print('Favorite Color: $favoriteColor');

  //Answer for Exercise 2, define a constant variable for the speed of light (299,792,458 meters per second). 
  //Calculate the time it takes for light to travel a certain distance (user input)

  const int speedOfLight = 299792458;

  print('Enter the distance in meter: ');
  int distanceTraveled = int.parse(stdin.readLineSync()!);
  double time = distanceTraveled / speedOfLight;

  print('Time taken to cover $distanceTraveled meters is $time seconds');
}