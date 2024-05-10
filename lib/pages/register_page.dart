import 'package:flutter/material.dart';
import 'package:shopping_list_app/themes/theme.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:shopping_list_app/data/database.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RegisterPage extends StatefulWidget {
  final DataBase db;
  final Box myBox;

  RegisterPage({Key? key, required this.db, required this.myBox}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();

}

class _RegisterPageState extends State<RegisterPage> {

  @override
  void initState() {
    if (widget.myBox.get("USERLIST") == null) {
      widget.myBox.put("USERLIST", []);
    } else {
      widget.db.loadData();
    }
  }

  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

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
        color: MaterialTheme.lightScheme().primaryContainer,
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  color: MaterialTheme.lightScheme().primaryContainer,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  elevation: 10,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      "Login or Register",
                      style: TextStyle(fontSize: 20, color: MaterialTheme.lightScheme().onPrimary),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              Material(
                elevation: 40.0,
                borderRadius: BorderRadius.circular(25),
                child: Container (
                  height: MediaQuery.of(context).size.height * 0.6,
                  width: MediaQuery.of(context).size.width * 0.8,
                  decoration: BoxDecoration(
                    color: MaterialTheme.lightScheme().primaryContainer,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: MaterialTheme.lightScheme().primaryContainer,
                          ),
                          margin: const EdgeInsets.all(10),
                          child: TextField(
                            controller: _usernameController,
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Username',
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: MaterialTheme.lightScheme().primaryContainer,
                          ),
                          margin: const EdgeInsets.all(10),
                          child: TextField(
                            controller: _passwordController,
                            obscureText: true,
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Password',
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: MaterialTheme.lightScheme().primaryContainer,
                          ),
                          margin: const EdgeInsets.all(10),
                          child: TextField(
                            controller: _confirmPasswordController,
                            obscureText: true,
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Confirm Password',
                            ),
                          ),
                        ),
                        SizedBox(height: 200),
                        SizedBox(
                          width: 115,
                          height: 50,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              foregroundColor: MaterialTheme.lightScheme().onTertiary,
                              backgroundColor: MaterialTheme.lightScheme().tertiaryContainer,
                            ),
                            onPressed: () {
                              if (_passwordController.text == _confirmPasswordController.text){
                                widget.db.addUser(_passwordController.text, _passwordController.text);
                                Navigator.pop(context);
                              }
                            },
                            child: const Text('Register'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

}