import 'package:flutter/material.dart';
import 'package:shopping_list_app/themes/theme.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:shopping_list_app/data/database.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: FaIcon(FontAwesomeIcons.shoppingCart),
        ),
        title: const Text("Shopping List App"),
        backgroundColor: MaterialTheme.lightScheme().inversePrimary,
      ),
      body: Container(
        color: Colors.black12,
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
                )
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
                        SizedBox(height: 200,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SizedBox(
                              width: 115,
                              height: 50,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  foregroundColor: MaterialTheme.lightScheme().onTertiary,
                                  backgroundColor: MaterialTheme.lightScheme().tertiaryContainer,
                                ),
                                onPressed: () {
                                  Navigator.pushNamed(context, '/register');
                                  },
                                child: const Text('Register'),
                                ),
                              ),
                            SizedBox(
                              width: 115,
                              height: 50,
                              child: ElevatedButton(
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
                              ),
                            ],
                          ),
                      ],
                    ),
                  )
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
}