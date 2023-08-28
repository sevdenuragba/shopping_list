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

    if (newItem == null) {
      return;
    }
    setState(() {
      _groceryItems.add(newItem);
    });
  }

  void _removeItem(GroceryItem item) {
    setState(() {
      _groceryItems.remove(item);
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget mainContent = const Center(
      child: Padding(
        padding: EdgeInsets.all(40.0),
        child: Text(
          'No items were found. Try adding some.',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 22,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );

    if (_groceryItems.isNotEmpty) {
      mainContent = ListView.builder(
        itemCount: _groceryItems.length,
        itemBuilder: (ctx, index) => Dismissible(
          key: ValueKey(_groceryItems[index].id),
          background: Container(
            color: Theme.of(context).colorScheme.background.withOpacity(0.7),

          ),
          onDismissed: (direction) {
            _removeItem(_groceryItems[index]);
          },
          child: ListTile(
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
      body:  mainContent,
    );
  }
}
