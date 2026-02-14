//khai bao package
import 'package:lab_he181730/models/Product.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

part 'ProductRepository.g.dart';

// 1. Provider quản lý chính đối tượng Repository (Singleton-like)
@riverpod
ProductRepository productRepository(ProductRepositoryRef ref) {
  return ProductRepository();
} 

// 2. Provider lấy dữ liệu sản phẩm, lắng nghe từ Repository trên
final productProvider = FutureProvider<List<Product>>(
  (ref) {
    // Lấy instance của repository từ provider đã generate
    final repo = ref.watch(productRepositoryProvider); 
    return repo.getAll();
  },
);

class ProductRepository {
  // Khởi tạo danh sách từ dữ liệu mẫu và giữ nó trong bộ nhớ
  List<Product> products = Product.getList();

  Future<List<Product>> getAll() async {
    // Trả về biến products đang quản lý, không trả về Product.getList() nữa
    return products; 
  }

  Future<void> add(Product p) async {
    products.add(p);
  }

  Future<void> edit(Product p) async {
    int index = products.indexWhere((element) => element.id == p.id);
    if (index != -1) {
      products[index] = p;
    }
  }

  Future<void> delete(String id) async {
    products.removeWhere((p) => p.id == id);
  }
}