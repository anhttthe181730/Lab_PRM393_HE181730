import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../services/ProductListViewModel.dart';

import '../models/Category.dart';

class Category2Menu extends ConsumerWidget implements PreferredSizeWidget {
  const Category2Menu({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      height: preferredSize.height,
      child: PopupMenuButton<CategoryProduct>(
        icon: Icon(Icons.menu),
        onSelected: (valueSelected){
          // lấy về danh sách sản phẩm thuộc loại sản phẩm được chọn
           ref
              .read(productListViewModelProvider.notifier)
              .FillByCategory(valueSelected.caId);
          ;
        },
        itemBuilder: (BuildContext context) {
          return CategoryProduct.getCategories().map((category) {
            return PopupMenuItem<CategoryProduct>(
              value: category,
              child: Row(
                children: [
                  Icon(category.icon),
                  Text(category.caName),
                ],
              ),
            );
          }).toList();
        },
      ),
    );
  }
  @override 
  Size get preferredSize => Size.fromHeight(75.0);
}

