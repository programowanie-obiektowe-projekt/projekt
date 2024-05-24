import 'package:shopping_list_app/data/user.dart';
import 'package:flutter/material.dart';
import 'package:shopping_list_app/themes/theme.dart';

class ItemTile extends StatefulWidget {
  final Item item;
  final onTap;
  final deleteItem;

  ItemTile({required this.item, required this.onTap, required this.deleteItem});

  @override
  _ItemTileState createState() => _ItemTileState();
}

class _ItemTileState extends State<ItemTile> {
  bool _isChecked = false;
  TextEditingController _controllerName = TextEditingController();
  TextEditingController _controllerQuantity = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(10),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: MaterialTheme.lightScheme().tertiaryContainer),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Container(
          decoration: BoxDecoration(
            color: MaterialTheme.lightScheme().tertiaryContainer,
            borderRadius: BorderRadius.circular(10),
          ),
          child: ListTile(
            onTap: widget.onTap,
            leading: Checkbox(
              value: _isChecked,
              onChanged: (bool? value) {
                setState(() {
                  _isChecked = value!;
                });
              },
            ),
            title: Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: widget.item.name + "    ",
                    style: TextStyle(
                      color: _isChecked ? Colors.grey : MaterialTheme.lightScheme().onTertiaryContainer,
                      decoration: _isChecked ? TextDecoration.lineThrough : TextDecoration.none,
                    ),
                  ),
                  TextSpan(
                    text: widget.item.quantity,
                    style: TextStyle(
                      color: _isChecked ? Colors.grey : MaterialTheme.lightScheme().onTertiaryContainer,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              ),
            ),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  icon: Icon(Icons.edit),
                  onPressed: () {
                    _controllerName.text = widget.item.name;
                    _controllerQuantity.text = widget.item.quantity;
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text("Edit item's name and quantity"),
                          content: Column(
                            children: [
                              TextField(
                                controller: _controllerName,
                                decoration: InputDecoration(
                                  hintText: "Enter new name",
                                ),
                              ),
                              TextField(
                                controller: _controllerQuantity,
                                decoration: InputDecoration(
                                  hintText: "Enter new quantity",
                                ),
                              ),
                            ],
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
                                    widget.item.editItem(_controllerName.text, _controllerQuantity.text);
                                    Navigator.pop(context);
                                    setState(() {});
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
                      widget.deleteItem;
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