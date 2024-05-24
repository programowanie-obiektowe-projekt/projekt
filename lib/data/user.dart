class User {

  final String username;
  final String password;
  User({required this.username, required this.password});

  List ShoppingLists = [];

  void addShoppingList(String name){
    ShoppingList shoppingList = ShoppingList();
    shoppingList.name = name;
    ShoppingLists.add(shoppingList);
  }
  void deleteShoppingList(int index){
    ShoppingLists.removeAt(index);
  }
}

class Item {

  String name = "";
  String quantity = "";

  void editItem(String name, String quantity){
    this.name = name;
    this.quantity = quantity;
  }

}

class ShoppingList {

  String name = "";

  List ItemList = [];

  void editShoppingListName(String name){
    this.name = name;
  }

  void addItem(String name, String quantity) {
    Item item = Item();
    item.name = name;
    item.quantity = quantity;
    ItemList.add(item);
  }

  void deleteItem(int index){
    ItemList.removeAt(index);
  }

}