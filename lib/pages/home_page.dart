import 'package:flutter/material.dart';
import 'package:shopping_list_app/themes/theme.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:shopping_list_app/data/database.dart';
import 'package:shopping_list_app/utils/Tile.dart';
import 'package:shopping_list_app/data/user.dart';

class HomePage extends StatefulWidget {
  final DataBase db;
  final Box myBox;
  const HomePage({Key? key, required this.db, required this.myBox}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();

}

class _HomePageState extends State<HomePage> {

  @override
  void initState() {
    if (widget.myBox.get("USERLIST") == null) {
      widget.myBox.put("USERLIST", []);
    } else {
      widget.db.loadData();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Shopping List App"),
        backgroundColor: MaterialTheme.lightScheme().inversePrimary,
      ),
      body: Column(
        children: [
          ListView.builder(
              itemCount: widget.db.currentUser.shoppingLists.length,
              itemBuilder: (context, index) {
                return ShoppingListTile(
                  name: widget.db.currentUser.shoppingLists[index].name
                );
              }
          ),
          FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () {
              TextEditingController nameController = TextEditingController();
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: const Text("Add Shopping List"),
                    content: Column(
                      children: [
                        TextField(
                          decoration: const InputDecoration(
                            labelText: "Name",
                          ),
                          controller: nameController,
                        ),
                      ],
                    ),
                    actions: [
                      TextButton(
                        onPressed: () {
                          widget.db.currentUser.addShoppingList(nameController.text);
                          widget.db.updateData();
                          Navigator.of(context).pop();
                          setState(() {});
                        },
                        child: const Text("Add"),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: const Text("Cancel"),
                      )
                    ]
                  );
                }
              );
            }
          )
        ],
      )
    );
  }
}