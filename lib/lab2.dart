void main() async {
  exercise1();
  exercise2();
  exercise3();
  exercise4();
  await exercise5();
}

// Exercise 1: Basic Syntax & Data Types
void exercise1() {
  int age = 20;
  double gpa = 3.5;
  String name = "Alex";
  bool isStudent = true;

  print("\n--- Exercise 1 ---");
  print("Name: $name, Age: $age, GPA: $gpa, Student: $isStudent");
}

// Exercise 2: Collections & Operators
void exercise2() {
  List<int> list = [1, 2, 3];
  Set<int> set = {1, 2, 2, 3};
  Map<String, int> map = {"Math": 90};

  int a = 10, b = 5;

  print("\n--- Exercise 2 ---");
  print("List: $list");
  print("Set: $set");
  print("Map: $map");
  print("a > b ? ${a > b}");
}

// Exercise 3: Control Flow & Functions
void exercise3() {
  int score = 75;
  int day = 3;

  print("\n--- Exercise 3 ---");
  // print(score >= 50 ? "Pass" : "Fail");

  if (score >= 50) {
    print("Pass");
  } else {
    print("Fail");
  }

  switch (day) {
    case 1:
      print("Monday");
      break;
    case 2:
      print("Tuesday");
      break;
    case 3:
      print("Wednesday");
      break;
    default:
      print("Invalid day");
  }

  print("Sum: ${add(3, 4)}");
}

int add(int a, int b) => a + b;

// Exercise 4: OOP
void exercise4() {
  Car car = Car("Toyota");
  ElectricCar eCar = ElectricCar("Tesla");

  print("\n--- Exercise 4 ---");
  car.drive();
  eCar.drive();
}

class Car {
  String brand;
  Car(this.brand);

  void drive() => print("$brand is driving");
}

class ElectricCar extends Car {
  ElectricCar(String brand) : super(brand);

  @override
  void drive() => print("$brand drives silently");
}

// Exercise 5: Async, Null Safety & Stream
Future<void> exercise5() async {
  print("\n--- Exercise 5 ---");

  String data = await Future.delayed(Duration(seconds: 1), () => "Data loaded");
  print(data);

  String? name;
  print(name ?? "Null value");

  Stream.fromIterable([1, 2, 3]).listen((v) => print("Stream: $v"));
}
