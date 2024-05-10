import 'package:flutter/material.dart';
import 'package:shopping_list_app/themes/theme.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:shopping_list_app/data/database.dart';

class LoginPage extends StatefulWidget {
  final DataBase db;
  final Box myBox;
  const LoginPage({Key? key, required this.db, required this.myBox}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();

}

class _LoginPageState extends State<LoginPage> {

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Shopping List App"),
        backgroundColor: MaterialTheme.lightScheme().inversePrimary,
      ),
      body: Container (
        decoration: BoxDecoration(
          color: MaterialTheme.lightScheme().primaryContainer,
        ),
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
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    foregroundColor: MaterialTheme.lightScheme().onTertiary,
                    backgroundColor: MaterialTheme.lightScheme().tertiaryContainer,
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/register');
                  },
                  child: const Text('Register'),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    foregroundColor: MaterialTheme.lightScheme().onSecondary,
                    backgroundColor: MaterialTheme.lightScheme().secondaryContainer,
                  ),
                  onPressed: () {
                    widget.db.loadData();
                    if (widget.db.login(_usernameController.text, _passwordController.text) == 1){
                      Navigator.pushNamed(context, '/home');
                    } else {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: const Text('Error'),
                            content: const Text('Invalid Username or Password'),
                            actions: <Widget>[
                              TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: const Text('OK'),
                              ),
                            ],
                          );
                        },
                      );
                    }
                  },
                  child: const Text('Login'),
                ),
              ],
            )
          ],
        )
      )
    );
  }
}