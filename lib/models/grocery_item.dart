import 'package:shopping_list/models/category.dart';

class GroceryItem {
  GroceryItem(
      {required this.id,
      required this.name,
      required this.quantity,
      required this.category});

  final String id;
  final String name;
  final int quantity;
  final Category category;

  Map get toMap {
    return {
      'id': id,
      'name': name,
      'quantity': quantity,
      'category': category.title
    };
  }
}
