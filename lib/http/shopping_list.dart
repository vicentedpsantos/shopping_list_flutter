import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:shopping_list/http/http_client.dart';
import 'package:shopping_list/models/grocery_item.dart';
import 'package:shopping_list/http/constants.dart' as constants;

const HttpClient client = HttpClient(
    baseUrl: constants.baseURL);

Future<Map> createGroceryItem(GroceryItem groceryItem) async {
  final response = await client.doPost(constants.shoppingListPath, groceryItem.toMap);
  Map mapResponse = json.decode(response.body);
  return mapResponse;
}

Future<Map> getGroceryItems() async {
  final response = await client.doGet(constants.shoppingListPath);
  Map mapResponse = json.decode(response.body);
  return mapResponse;
}

Future<http.Response> deleteGroceryItem(String id) async {
  final response = await client.doDelete('shopping-list/$id.json');
  return response;
}
