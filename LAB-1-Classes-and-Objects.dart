// Implemenation of class person for Exercise 1 page9
class Person {
  String name;
  int age;
  String address;

  Person({required this.name, required this.age, required this.address});
}

// Implemenation of class Student for Exrercise 2 page9

class Student extends Person {
  int rollNumber;
  List<int> marks;

  Student({
    required String name,
    required int age,
    required String address,
    required this.rollNumber,
    required this.marks,
  }) : super(name: name, age: age, address: address);

  int calculateTotalMarks() {
    int total = 0;
    for (int mark in marks) {
      total += mark;
    }
    return total;
  }

  double calculateAverageMarks() {
    int total = calculateTotalMarks();
    double average = total / marks.length;
    return average;
  }
}

//Implemenation of Exercise 1 on page 10 for classes and Objects
class Rectangle {
  double width;
  double height;

  Rectangle(this.width, this.height);

  double calculateArea() {
    return width * height;
  }

  double calculatePerimeter() {
    return 2 * (width + height);
  }
}

//Implemenation for Exercise 2 on page 10 for classes and Objects
class Product {
  String name;
  double price;
  int quantity;

  Product(this.name, this.price, this.quantity);

  double calculateTotalCost() {
    return price * quantity;
  }
}
//Implemenation for Exercise 3 on page 10 for classes and Objects
abstract class Shape {
  double calculateArea2();
}

class Circle extends Shape {
  double radius;

  Circle(this.radius);

  @override
  double calculateArea2() {
    return 3.14 * radius * radius;
  }
}

class Square extends Shape {
  double side;

  Square(this.side);

  @override
  double calculateArea2() {
    return side * side;
  }
}

void main() {

  // Implementation for Exercise 1 page 9
  Person person1 = Person(
    name: 'Sifen',
    age: 20,
    address: 'Addis Ababa , Ethiopia',
  );

  Person person2 = Person(
    address: 'Narobi, Kenya',
    name: 'Lensa',
    age: 18,
  );

  print('Person 1:');
  print('Name: ${person1.name}');
  print('Age: ${person1.age}');
  print('Address: ${person1.address}');

  print('Person 2:');
  print('Name: ${person2.name}');
  print('Age: ${person2.age}');
  print('Address: ${person2.address}');

  // after modifying the attrivutes
  person1.age = 19;
  person2.address = 'Addis Ababa, Ethiopia';

  print('Modified Person 1:');
  print('Name: ${person1.name}');
  print('Age: ${person1.age}');
  print('Address: ${person1.address}');

  print('Modified Person 2:');
  print('Name: ${person2.name}');
  print('Age: ${person2.age}');
  print('Address: ${person2.address}');
  //End for Implementation of Exrercise 1 

  //Implemenation for Exercise 2 page 9
   Student student1 = Student(
    name: ' Yedi',
    age: 16,
    address: 'Addis Ababa',
    rollNumber: 32,
    marks: [85, 90, 92, 88, 95],
  );

  print('Student 1:');
  print('Name ${student1.name}');
  print('Age${student1.age}');
  print('Address ${student1.address}');
  print('Roll Number ${student1.rollNumber}');
  print('Marks  ${student1.marks}');
  print('Total Marks  ${student1.calculateTotalMarks()}');
  print('Average Marks${student1.calculateAverageMarks()}');
  //End of Exercise 2 on page 9

  //Answer for Exrercise 1  Class and Object on page 10
  Rectangle rectangle = Rectangle(5, 8);

  double area = rectangle.calculateArea();
  double perimeter = rectangle.calculatePerimeter();

  print('Rectangle:');
  print('Width ${rectangle.width}');
  print('Height: ${rectangle.height}');
  print('Area $area');
  print('Perimeter: $perimeter');

  //Answer for Exercise 2 on class and objects on page 10 
  Product product = Product('Onion', 150, 3);

  double totalCost = product.calculateTotalCost();

  print('Product:');
  print('Name ${product.name}');
  print('Price ${product.price}');
  print('Quantity   ${product.quantity}');
  print('Total Cost$totalCost Birr');

  //Implemenation for Exercise 3 on page 10 for classes and Objects
  Circle circle = Circle(5);
  Square square = Square(4);

  double circleArea = circle.calculateArea2();
  double squareArea = square.calculateArea2();

  print('Circle:');
  print('Radius ${circle.radius}');
  print('Area$circleArea');

  print('Square:');
  print('Side ${square.side}');
  print('Area $squareArea');

}