import 'package:flutter/material.dart';
import 'package:shopping_list/models/grocery_item.dart';
import 'package:shopping_list/widgets/new_item.dart';
//import 'package:shopping_list/presentation/my_flutter_app_icons.dart';

class GroceryList extends StatefulWidget {
  const GroceryList({super.key});

  @override
  State<GroceryList> createState() => _GroceryListState();
}

class _GroceryListState extends State<GroceryList> {
final List<GroceryItem> _groceryItems = [];

  void _addItem() async {
    final newItem = await Navigator.of(context).push<GroceryItem>(
      MaterialPageRoute(
        builder: (ctx) => const NewItem(),
      ),
    );

    if(newItem == null){
      return;
    }
    setState(() {
      _groceryItems.add(newItem);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Your groceries',
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: _addItem,
          )
        ],
      ),
      body: ListView.builder(
        itemCount: _groceryItems.length,
        itemBuilder: (ctx, index) => ListTile(
          title: Text(
            _groceryItems[index].name,
          ),
          leading: Container(
            width: 28,
            height: 28,
            color: _groceryItems[index].category.color,
            //child: Icon(
            // groceryItems[index].category.icon,
          ),
          trailing: Text(
            _groceryItems[index].quantity.toString(),
          ),
        ),
      ),
    );
  }
}
