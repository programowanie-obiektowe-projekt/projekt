class User {

  final String username;
  final String password;
  User({required this.username, required this.password});

  List ShoppingLists = [];
  List<Item> ItemList = [];

  void addItem(String name, String quantity){
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
  void clearItemList(){
    ItemList.clear();
  }

  void addShoppingList(String name){
    ShoppingList shoppingList = ShoppingList(name: name, items: ItemList);
    ShoppingLists.add(shoppingList);
  }
  void deleteShoppingList(int index){
    ShoppingLists.removeAt(index);
  }
  void editShoppingList(int index, String name){
    ShoppingLists[index].name = name;
  }

}

class Item {

  late final String name;
  late final String quantity;

  Item({required this.name, required this.quantity});
}

class ShoppingList {

  late final String name;
  late final List<Item> items;

  ShoppingList({required this.name, required this.items});
}