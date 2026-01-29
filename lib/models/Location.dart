class Location {
  final String id;
  final String name;
  final String address;
  final String description;
  final int count;
  final String image;

  final bool isStarred; // lưu trạng thái đã star chưa

  const Location({
    required this.id,
    required this.name,
    required this.address,
    required this.description,
    required this.count,
    required this.image,
    this.isStarred = false,
  });

  Location copyWith({
    String? id,
    String? name,
    String? address,
    String? description,
    int? count,
    String? image,
    bool? isStarred,
  }) {
    return Location(
      id: id ?? this.id,
      name: name ?? this.name,
      address: address ?? this.address,
      description: description ?? this.description,
      count: count ?? this.count,
      image: image ?? this.image,
      isStarred: isStarred ?? this.isStarred,
    );
  }
}
