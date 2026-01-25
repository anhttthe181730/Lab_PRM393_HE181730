// lab3.dart
import 'dart:async';
import 'dart:convert';

// Exercise 1: Product Model & Repository (Future + Stream)

class Product {
  final int id;
  final String name;
  final double price;

  Product({required this.id, required this.name, required this.price});

  @override
  String toString() => 'Product(id: $id, name: $name, price: $price)';
}

class ProductRepository {
  final List<Product> _products = [
    Product(id: 1, name: 'Apple', price: 1.5),
    Product(id: 2, name: 'Banana', price: 0.8),
  ];

  final StreamController<Product> _controller =
      StreamController<Product>.broadcast();

  Future<List<Product>> getAll() async {
    await Future.delayed(const Duration(milliseconds: 300));
    return List<Product>.from(_products);
  }

  Stream<Product> liveAdded() => _controller.stream;

  void addProduct(Product p) {
    _products.add(p);
    _controller.add(p);
  }

  void dispose() => _controller.close();
}

Future<void> runExercise1() async {
  print("Exercise 1");

  final repo = ProductRepository();

  final sub = repo.liveAdded().listen((p) {
    print("Live added -> $p");
  });

  final all = await repo.getAll();
  for (final p in all) {
    print("Initial -> $p");
  }

  repo.addProduct(Product(id: 3, name: "Milk", price: 2.3));
  repo.addProduct(Product(id: 4, name: "Bread", price: 1.2));

  await Future.delayed(const Duration(milliseconds: 200));
  await sub.cancel();
  repo.dispose();

  print("");
}

// Exercise 2: User Repository with JSON

class User {
  final String name;
  final String email;

  User({required this.name, required this.email});

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      name: json['name'] ?? '',
      email: json['email'] ?? '',
    );
  }

  @override
  String toString() => 'User(name: $name, email: $email)';
}

class UserRepository {
  Future<List<User>> fetchUsers() async {
    await Future.delayed(const Duration(milliseconds: 300));

    final String fakeApiJson = jsonEncode([
      {"name": "Alice", "email": "alice@gmail.com"},
      {"name": "Bob", "email": "bob@gmail.com"},
      {"name": "Charlie", "email": "charlie@gmail.com"},
    ]);

    final List decoded = jsonDecode(fakeApiJson);
    return decoded.map((e) => User.fromJson(e)).toList();
  }
}

Future<void> runExercise2() async {
  print("Exercise 2");

  final repo = UserRepository();
  final users = await repo.fetchUsers();

  for (final u in users) {
    print(u);
  }

  print("");
}

// Exercise 3: Async + Microtask Debugging

Future<void> runExercise3() async {
  print("Exercise 3");

  print("Start");

  scheduleMicrotask(() => print("Microtask 1"));
  Future(() => print("Future 1"));

  scheduleMicrotask(() => print("Microtask 2"));
  Future(() => print("Future 2"));

  print("End");

  await Future.delayed(const Duration(milliseconds: 200));
  print("");
}

// Exercise 4: Stream Transformation (map + where)

Stream<int> numberStream1to5() async* {
  for (int i = 1; i <= 5; i++) {
    await Future.delayed(const Duration(milliseconds: 100));
    yield i;
  }
}

Future<void> runExercise4() async {
  print("Exercise 4");

  final stream = numberStream1to5()
      .map((x) => x * x)
      .where((x) => x % 2 == 0);

  await for (final value in stream) {
    print(value);
  }

  print("");
}

// Exercise 5: Factory Constructors & Singleton

class Settings {
  static final Settings _instance = Settings._internal();

  Settings._internal();

  factory Settings() {
    return _instance;
  }

  String theme = "light";
}

Future<void> runExercise5() async {
  print("Exercise 5");

  final a = Settings();
  final b = Settings();

  print("identical(a, b) -> ${identical(a, b)}");

  a.theme = "dark";
  print("a.theme -> ${a.theme}");
  print("b.theme -> ${b.theme}");

  print("");
}

// Main

Future<void> main() async {
  print("Lab 3\n");

  await runExercise1();
  await runExercise2();
  await runExercise3();
  await runExercise4();
  await runExercise5();
}
