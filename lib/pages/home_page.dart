import 'package:flutter/material.dart';
import 'package:shopping_list_app/themes/theme.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:shopping_list_app/data/database.dart';
import 'package:shopping_list_app/utils/shoppinglist_tile.dart';
import 'package:shopping_list_app/data/user.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shopping_list_app/pages/list_view.dart';

class HomePage extends StatefulWidget {
  final DataBase db;
  final Box myBox;
  const HomePage({Key? key, required this.db, required this.myBox}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();

}

class _HomePageState extends State<HomePage> {

  User? currentUser;

  @override
  void initState() {
    super.initState();
    currentUser = widget.db.currentUser;
    print('Current user: $currentUser');
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
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: FaIcon(FontAwesomeIcons.shoppingCart),
        ),
        title: const Text("Shopping List App"),
        backgroundColor: MaterialTheme.lightScheme().inversePrimary,
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
                    itemCount: widget.db.currentUser!.ShoppingLists.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ShoppingListTile(
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => ListViewPage(list: widget.db.currentUser!.ShoppingLists[index])),
                            );
                          },
                          shoppingList: widget.db.currentUser!.ShoppingLists[index],
                          deleteShoppingList: (){
                            widget.db.currentUser!.deleteShoppingList(index);
                            widget.db.updateData();
                            setState(() {});
                          },
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
                    backgroundColor: MaterialTheme.lightScheme().primaryContainer,
                    child: Icon(Icons.add),
                    onPressed: () {
                      TextEditingController nameController = TextEditingController();
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                                title: const Text("Add Shopping List"),
                                content: Container(
                                  height: MediaQuery.of(context).size.height * 0.1,
                                  child: Column(
                                    children: [
                                      TextField(
                                        decoration: const InputDecoration(
                                          labelText: "Name",
                                        ),
                                        controller: nameController,
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
                                          widget.db.currentUser!.addShoppingList(nameController.text);
                                          widget.db.updateData();
                                          Navigator.of(context).pop();
                                          setState(() {});
                                        },
                                        child: const Text("Add"),
                                      ),
                                    ],
                                  ),
                                ]
                            );
                          }
                      );
                    }
                  ),
                ),
              ),
            )
          ],
        ),
      )
    );
  }
}