import 'package:flutter/material.dart';
import 'package:shopping_list_app/themes/theme.dart';
import 'package:shopping_list_app/data/user.dart';

class ItemTile extends StatefulWidget {
  final Item item;
  final Function deleteItem;
  final Function onTap;

  ItemTile({required this.item, required this.onTap, required this.deleteItem});

  @override
  _ItemTileState createState() => _ItemTileState();
}

class _ItemTileState extends State<ItemTile> {
  bool _isChecked = false;

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
            onTap: () => widget.onTap(),
            leading: Checkbox(
              value: _isChecked,
              onChanged: (bool? value) {
                setState(() {
                  _isChecked = value!;
                });
              },
            ),
            title: Text(
              widget.item.name + " (" + widget.item.quantity + ")",
              style: TextStyle(
                color: _isChecked ? Colors.grey : MaterialTheme.lightScheme().onTertiaryContainer,
                decoration: _isChecked ? TextDecoration.lineThrough : TextDecoration.none,
              ),
            ),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  icon: Icon(Icons.edit),
                  onPressed: () {
                    TextEditingController nameController = TextEditingController(text: widget.item.name);
                    TextEditingController quantityController = TextEditingController(text: widget.item.quantity);
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: const Text("Edit Item"),
                          content: Container(
                            height: MediaQuery.of(context).size.height * 0.2,
                            child: Column(
                              children: [
                                TextField(
                                  decoration: const InputDecoration(
                                    labelText: "Name",
                                  ),
                                  controller: nameController,
                                ),
                                TextField(
                                  decoration: const InputDecoration(
                                    labelText: "Quantity",
                                  ),
                                  controller: quantityController,
                                ),
                              ],
                            ),
                          ),
                          actions: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: const Text("Cancel"),
                                ),
                                TextButton(
                                  onPressed: () {
                                    setState(() {
                                      widget.item.name = nameController.text;
                                      widget.item.quantity = quantityController.text;
                                    });
                                    Navigator.of(context).pop();
                                  },
                                  child: const Text("Save"),
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
                    widget.deleteItem();
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