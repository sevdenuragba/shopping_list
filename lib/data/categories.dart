import 'package:flutter/material.dart';

import 'package:shopping_list/models/category.dart';
import 'package:shopping_list/presentation/my_flutter_app_icons.dart';

const categories = {
  Categories.vegetables: Category(
    'Vegetables',
    Color.fromARGB(255, 0, 255, 128),
    Icon(MyFlutterApp.carrot)
  ),
  Categories.fruit: Category(
    'Fruit',
    Color.fromARGB(255, 145, 255, 0),
    Icon(MyFlutterApp.apple_alt)
  ),
  Categories.meat: Category(
    'Meat',
    Color.fromARGB(255, 255, 102, 0),
    Icon(MyFlutterApp.meat)
  ),
  Categories.dairy: Category(
    'Dairy',
    Color.fromARGB(255, 0, 208, 255),
    Icon(MyFlutterApp.cheese)
  ),
  Categories.carbs: Category(
    'Carbs',
    Color.fromARGB(255, 0, 60, 255),
    Icon(MyFlutterApp.toast)
  ),
  Categories.sweets: Category(
    'Sweets',
    Color.fromARGB(255, 255, 149, 0),
    Icon(MyFlutterApp.candy_cane)
  ),
  Categories.spices: Category(
    'Spices',
    Color.fromARGB(255, 255, 187, 0),
    Icon(MyFlutterApp.leaf)
  ),
  Categories.convenience: Category(
    'Convenience',
    Color.fromARGB(255, 191, 0, 255),
    Icon(MyFlutterApp.local_convenience_store)
  ),
  Categories.hygiene: Category(
    'Hygiene',
    Color.fromARGB(255, 149, 0, 255),
    Icon(MyFlutterApp.hands_wash)
  ),
  Categories.other: Category(
    'Other',
    Color.fromARGB(255, 0, 225, 255),
    Icon(MyFlutterApp.shop)
  ),
};