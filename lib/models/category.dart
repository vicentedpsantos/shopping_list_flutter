import 'package:flutter/material.dart';
import 'package:shopping_list/data/categories.dart';

enum Categories {
  vegetables,
  fruit,
  meat,
  dairy,
  carbs,
  sweets,
  spices,
  convenience,
  hygiene,
  other
}

class Category {
  const Category(this.title, this.color);

  final String title;
  final Color color;

  static Category findByTitle(String title) => categories.values
      .toList()
      .firstWhere((category) => category.title == title);
}
