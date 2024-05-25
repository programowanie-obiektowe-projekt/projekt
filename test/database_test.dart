import 'package:flutter_test/flutter_test.dart';
import 'package:shopping_list_app/data/user.dart';

void main() {
  group('User', () {
    final User testUser = User(username: 'test', password: 'password');

    test('addShoppingList', () {
      testUser.addShoppingList('Groceries');
      expect(testUser.ShoppingLists.length, 1);
      expect(testUser.ShoppingLists[0].name, 'Groceries');
    });
  });

  group('Item', () {
    final Item testItem = Item();

    test('editItem', () {
      testItem.editItem('Apple', '1kg');
      expect(testItem.name, 'Apple');
      expect(testItem.quantity, '1kg');
    });
  });

  group('ShoppingList', () {
    final ShoppingList testList = ShoppingList();

    test('editShoppingListName', () {
      testList.editShoppingListName('Groceries');
      expect(testList.name, 'Groceries');
    });

    test('addItem', () {
      testList.addItem('Apple', '1kg');
      expect(testList.ItemList.length, 1);
      expect(testList.ItemList[0].name, 'Apple');
      expect(testList.ItemList[0].quantity, '1kg');
    });
  });
}