import 'package:http/http.dart' as http;

import 'package:shopping_list/http/http_client.dart';
import 'package:shopping_list/models/grocery_item.dart';
import 'package:shopping_list/http/constants.dart' as constants;

const HttpClient client = HttpClient(
    baseUrl: constants.baseURL);

void createGroceryItem(GroceryItem groceryItem) {
  client.doPost(constants.shoppingListPath, groceryItem.toMap);
}

Future<http.Response> getGroceryItems() {
  return client.doGet(constants.shoppingListPath);
}
