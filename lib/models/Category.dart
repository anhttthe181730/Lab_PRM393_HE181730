import 'package:flutter/material.dart';

class CategoryProduct {
  final String caId;
  final String caName;
  final IconData icon;

  CategoryProduct({
    required this.caId, 
    required this.caName, 
    required this.icon});

    static List<CategoryProduct> getCategories() {
      return [
        CategoryProduct(
          caId: "cat1",
          caName: "Category 1",
          icon: Icons.category,
        ),
        CategoryProduct(
          caId: "cat2",
          caName: "Category 2",
          icon: Icons.category,
        ),
        CategoryProduct(
            caId: "cat3",
            caName: "Category 3",
            icon: Icons.category,
        ),
        CategoryProduct(
            caId: "cat4",
            caName: "Category 4",
            icon: Icons.category,
        ),
        CategoryProduct(
            caId: "cat5",
            caName: "Category 5",
            icon: Icons.category,
        ),
      ];
    }
}