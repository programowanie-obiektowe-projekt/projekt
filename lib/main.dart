import 'package:flutter/material.dart';
import 'package:shopping_list_app/pages/login_page.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:shopping_list_app/pages/register_page.dart';
import 'package:shopping_list_app/data/database.dart';
import 'package:shopping_list_app/pages/home_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  var box = await Hive.openBox("USERLIST");

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final DataBase db = DataBase();
  final Box myBox = Hive.box("USERLIST");

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(db: db, myBox: myBox),
      theme: ThemeData(colorScheme: ColorScheme.light()),
      routes: {
        '/login': (context) => LoginPage(db: db, myBox: myBox),
        '/register': (context) => RegisterPage(db: db, myBox: myBox),
        '/home': (context) => HomePage(db: db, myBox: myBox),
      },
    );
  }
}
