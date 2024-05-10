class User {

  final String username;
  final String password;
  User({required this.username, required this.password});

  List ShoppingLists = [];

  void addShoppingList(String name){
    ShoppingList shoppingList = ShoppingList(name: name);
    ShoppingLists.add(shoppingList);
  }
  void deleteShoppingList(int index){
    ShoppingLists.removeAt(index);
  }
}

class Item {

  late final String name;
  late final String quantity;

  Item({required this.name, required this.quantity});
}

class ShoppingList {

  late final String name;

  ShoppingList({required this.name});

  List ItemList = [];

  void editShoppingListName(String name){
    this.name = name;
  }

  void addItem(String name, String quantity) {
    Item item = Item(name: name, quantity: quantity);
    ItemList.add(item);
  }

  void deleteItem(int index){
    ItemList.removeAt(index);
  }

  void editItem(int index, String name, String quantity){
    ItemList[index].name = name;
    ItemList[index].quantity = quantity;
  }
}