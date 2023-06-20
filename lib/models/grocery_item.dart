import 'package:uuid/uuid.dart';
import 'package:shopping_list/models/category.dart';

const uuid = Uuid();

class GroceryItem {
  GroceryItem(
      {required this.name, required this.quantity, required this.category})
      : id = uuid.v4();

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
