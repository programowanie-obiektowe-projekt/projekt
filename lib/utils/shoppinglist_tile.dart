import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shopping_list_app/themes/theme.dart';
import 'package:shopping_list_app/data/user.dart';

class ShoppingListTile extends StatelessWidget {
  final ShoppingList shoppingList;

  ShoppingListTile({required this.shoppingList});

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(10),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: MaterialTheme.lightScheme().secondaryContainer),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Container(
          decoration: BoxDecoration(
            color: MaterialTheme.lightScheme().secondaryContainer,
            borderRadius: BorderRadius.circular(10),
          ),
          child: ListTile(
            leading: FaIcon(FontAwesomeIcons.shoppingCart),
            title: Text(
              shoppingList.name,
              style: TextStyle(color: MaterialTheme.lightScheme().onPrimaryContainer),
            ),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  icon: Icon(Icons.edit),
                  onPressed: () {
                    TextEditingController _controller = TextEditingController(text: shoppingList.name);
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
                                    shoppingList.editShoppingListName(_controller.text);
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
                    // Tutaj umieszczamy logikę, co ma się stać po naciśnięciu przycisku
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