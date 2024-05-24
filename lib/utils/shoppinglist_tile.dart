import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shopping_list_app/themes/theme.dart';
import 'package:shopping_list_app/data/user.dart';

class ShoppingListTile extends StatefulWidget {
  final ShoppingList shoppingList;
  final deleteShoppingList;
  final onTap;

  ShoppingListTile({required this.shoppingList, required this.onTap, required this.deleteShoppingList});

  @override
  _ShoppingListTileState createState() => _ShoppingListTileState();
}

class _ShoppingListTileState extends State<ShoppingListTile> {
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(10),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: MaterialTheme.lightScheme().primaryContainer),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Container(
          decoration: BoxDecoration(
            color: MaterialTheme.lightScheme().primaryContainer,
            borderRadius: BorderRadius.circular(10),
          ),
          child: ListTile(
            onTap: widget.onTap,
            leading: FaIcon(FontAwesomeIcons.shoppingCart),
            title: Text(
              widget.shoppingList.name,
              style: TextStyle(color: MaterialTheme.lightScheme().onPrimaryContainer),
            ),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  icon: Icon(Icons.edit),
                  onPressed: () {
                    TextEditingController _controller = TextEditingController(text: widget.shoppingList.name);
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text("Edit shopping list name"),
                          content: TextField(
                            controller: _controller,
                            decoration: InputDecoration(
                              hintText: "Enter new name",
                            ),
                          ),
                          actions: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: Text("Cancel"),
                                ),
                                TextButton(
                                  onPressed: () {
                                    setState(() {
                                      widget.shoppingList.editShoppingListName(_controller.text);
                                    });
                                    Navigator.pop(context);
                                    (context as Element).markNeedsBuild();
                                  },
                                  child: Text("Save"),
                                ),
                              ],
                            ),
                          ],
                        );
                      },
                    );
                  },
                ),
                IconButton(
                  icon: Icon(Icons.delete),
                  onPressed: () {
                    setState(() {
                      widget.deleteShoppingList();
                    });
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}