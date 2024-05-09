import 'package:flutter/material.dart';
import 'package:shopping_list_app/themes/theme.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:shopping_list_app/data/database.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();

}

class _RegisterPageState extends State<RegisterPage> {

  final _myBox = Hive.box('USERLIST');
  DataBase db = DataBase();
  @override
  void initState() {
    if (_myBox.get("USERLIST") == null) {
      _myBox.put("USERLIST", []);
    } else {
      db.loadData();
    }
  }

  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

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
            Container(
              decoration: BoxDecoration(
                color: MaterialTheme.lightScheme().primaryContainer,
              ),
              margin: const EdgeInsets.all(10),
              child: TextField(
                controller: _confirmPasswordController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Confirm Password',
                ),
              ),
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: MaterialTheme.lightScheme().onTertiary,
                  backgroundColor: MaterialTheme.lightScheme().tertiaryContainer,
                ),
                onPressed: () {
                  if (_passwordController.text == _confirmPasswordController.text){
                    db.addUser(_passwordController.text, _passwordController.text);
                    Navigator.pop(context);
                  }
                },
                child: const Text('Register'),
              ),
          ],
        ),
      )
    );
  }

}