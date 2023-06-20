import 'package:uuid/uuid.dart';
import 'package:shopping_list/models/category.dart';

const uuid = Uuid();

class GroceryItem {
  const GroceryItem.load(
      {required this.id,
      required this.name,
      required this.quantity,
      required this.category});

  GroceryItem(
      {required this.name, required this.quantity, required this.category})
      : id = uuid.v4();

  final String id;
  final String name;
  final int quantity;
  final Category category;

  Map get toMap {
    return {
      'name': name,
      'quantity': quantity,
      'category': category.title
    };
  }

  @override
  String toString() =>
      'GroceryItem{name: $name, quantity: $quantity, category: $category}';

  static List<GroceryItem> buildgroceryItems(Map rawGroceryItems) {
    return rawGroceryItems.entries.toList().map((entry) {
      return GroceryItem.load(
        id: entry.key,
        name: entry.value['name'],
        quantity: entry.value['quantity'],
        category: Category.findByTitle(entry.value['category']),
      );
    }).toList();
  }
}
