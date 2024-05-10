import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shopping_list_app/themes/theme.dart';

class ShoppingListTile extends StatelessWidget {
  final String name;

  ShoppingListTile({required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: MaterialTheme.lightScheme().primaryContainer),
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
        leading: FaIcon(FontAwesomeIcons.shoppingCart),
        title: Text(
            name,
          style: TextStyle(
            color: MaterialTheme.lightScheme().onPrimaryContainer,
          ),
        ),
      ),
    );
  }
}