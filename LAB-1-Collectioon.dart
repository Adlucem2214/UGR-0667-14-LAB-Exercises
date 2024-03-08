import 'dart:math';
//Answer for Exercise 4 
class Product {
  final String name;
  final double price;
  final int quantity;

  Product(this.name, this.price, this.quantity);
}

//Answer for Exercise 5 
class Student {
  final String name;
  final List<int> marks;

  Student(this.name, this.marks);

  double calculateAverageMark() {
    if (marks.isEmpty) return 0;

    int sum = marks.reduce((value, element) => value + element);
    return sum / marks.length;
  }
}

void main() {
  //Answer for Exercise 1 
  List<String> myhobbies = ['Reading', 'Running', 'Cooking','Dancing', 'Taekwando', 'Kpop'];

  print('My Orignal hobbies: $myhobbies');

  myhobbies.add('Swimming');
  print('Updated hobby after adding: $myhobbies');

  myhobbies.remove('Cooking');
  print('Updated hobby after adding: $myhobbies');

  myhobbies.sort();
  print('After sorting hobbies: $myhobbies');

  bool isEmpty = myhobbies.isEmpty;
  print('Is the list empty? $isEmpty');

  //Answer for Exercise 2 
  List<int> randomNumbers = List.generate(9, (index) => Random().nextInt(20));
  print('Random numbers: $randomNumbers');

  Set<int> uniqueNumbers = Set<int>.from(randomNumbers);
  print('Unique numbers: $uniqueNumbers');

  //Answer for eExercise 3 
  Map<String, int> studentMarks = {};

  studentMarks.putIfAbsent('Sifen', () => 90);
  studentMarks.putIfAbsent('Lensa', () => 100);

  print('Student Marks: $studentMarks');

  studentMarks.forEach((key, value) {
    print('$key - $value');
  });

  bool isFound = studentMarks.containsKey('Lensa');
  print('Does the map contain Lensa ? $isFound');

  //Answer for Exercise 4 

  List<Product> cart = [];

  // Add items to the cart
  cart.add(Product('Shoes', 49.99, 1));
  cart.add(Product('T-Shirt', 19.99, 2));
  cart.add(Product('Jeans', 59.99, 1));

  // Calculate the total price
  double totalPrice = 0;
  for (var product in cart) {
    totalPrice += product.price * product.quantity;
  }
  print('Total Price: \$${totalPrice.toStringAsFixed(2)}');

  // Remove an item from the cart
  cart.removeWhere((product) => product.name == 'T-Shirt');
  print('Updated Cart: $cart');

  //Answer for Exercise 5 
  Student student = Student('Sifen', [90, 85, 95, 80, 92]);
  double averageMark = student.calculateAverageMark();

  print('average mark: $averageMark');

}