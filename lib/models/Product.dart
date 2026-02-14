class Product {
  final String id;
  final String name;
  final double price;
  final String description;
  final String imageUrl;
  bool isFavorite;

  Product({
    required this.id,
    required this.name,
    required this.price,
    required this.description,
    required this.imageUrl,
    required this.isFavorite,
  });

  Product copyWith({
    String? id,
    String? name,
    double? price,
    String? description,
    String? imageUrl,
    bool? isFavorite,
  }) => Product(
    id: id ?? this.id,
    name: name ?? this.name,
    price: price ?? this.price,
    description: description ?? this.description,
    imageUrl: imageUrl ?? this.imageUrl,
    isFavorite: isFavorite ?? this.isFavorite,
  );
  static List<Product> getList() {
    return [
      Product(
        id: "01",
        name: "Product 1",
        description: "Đây là con mèo đáng yêu",
        imageUrl: "assets/images/conMeo.jpg",
        price: 100,
        isFavorite: true,
      ),
      Product(
        id: "02",
        name: "Product 2",
        description: "Đây là con hải cẩu",
        imageUrl: "assets/images/haicau.jpg",
        price: 200,
        isFavorite: false,
      ),
      Product(
        id: "03",
        name: "Product 3",
        description: "Mèo con dễ thương",
        imageUrl: "assets/images/conMeo.jpg",
        price: 150,
        isFavorite: true,
      ),
      Product(
        id: "04",
        name: "Product 4",
        description: "Hải cẩu béo tròn",
        imageUrl: "assets/images/haicau.jpg",
        price: 300,
        isFavorite: false,
      ),
    ];
  }
}
