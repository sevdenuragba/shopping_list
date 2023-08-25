import 'package:flutter/material.dart';
import 'package:shopping_list/data/dummy_items.dart';
//import 'package:shopping_list/presentation/my_flutter_app_icons.dart';

class GroceryList extends StatelessWidget {
  const GroceryList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Your groceries',
        ),
      ),
      body: ListView.builder(
        itemCount: groceryItems.length,
        itemBuilder: (ctx, index) => ListTile(
          title: Text(
            groceryItems[index].name,
          ),
          leading: Container(
            width: 28,
            height: 28,
            color: groceryItems[index].category.color,
            //child:  const Icon(
            // MyFlutterApp(groceryItems[index].category.icon), //this is where I try to fix
          ),
          trailing: Text(
            groceryItems[index].quantity.toString(),
          ),
        ),
      ),
    );
  }
}
