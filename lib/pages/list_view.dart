import 'package:flutter/material.dart';
import 'package:shopping_list_app/themes/theme.dart';
import 'package:shopping_list_app/data/user.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shopping_list_app/utils/item_tile.dart';

class ListViewPage extends StatefulWidget {
  final ShoppingList list;
  const ListViewPage({Key? key, required this.list}) : super(key: key);

  @override
  State<ListViewPage> createState() => _ListViewPageState();

}

class _ListViewPageState extends State<ListViewPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Padding(
              padding: const EdgeInsets.all(8.0),
              child: FaIcon(FontAwesomeIcons.list)
          ),
          title: Text(
            widget.list.name.toString(),
            style: TextStyle(color: MaterialTheme.lightScheme().onTertiary),
          ),
          backgroundColor: MaterialTheme.lightScheme().tertiary,
        ),
        body: Container(
          color: Colors.black12,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.7,
                  child: ListView.builder(
                      itemCount: widget.list.ItemList.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ItemTile(
                            item: widget.list.ItemList[index],
                            onTap: () {},
                            deleteItem: {
                              widget.list.deleteItem(index),
                            }
                          ),
                        );
                      }
                  ),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: SizedBox(
                      height: 100,
                      width: 100,
                      child: FloatingActionButton(
                        backgroundColor: MaterialTheme.lightScheme().tertiaryContainer,
                          child: Icon(Icons.add),
                          onPressed: () {
                            TextEditingController nameController = TextEditingController();
                            TextEditingController quantityController = TextEditingController();
                            showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                      title: const Text("Add Item"),
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
                                                widget.list.addItem(nameController.text, quantityController.text);
                                                Navigator.of(context).pop();
                                                setState(() {});
                                              },
                                              child: const Text("Add"),
                                            ),
                                          ],
                                        )
                                      ]
                                  );
                                }
                            );
                          }
                      ),
                    ),
                  )
              )
            ],
          ),
        )
    );
  }
}