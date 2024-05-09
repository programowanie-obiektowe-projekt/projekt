class User {

  final String username;
  final String password;
  User({required this.username, required this.password});

  List ShoppingLists = [];
  List ItemList = [];

  void addShoppingList(String name){
    ShoppingLists.add(name);
  }

  void addItem(String name, String quantity){
    ItemList.add(Item(name: name, quantity: quantity));
  }

  void deleteShoppingList(int index){
    ShoppingLists.removeAt(index);
  }

  void deleteItem(int index){
    ItemList.removeAt(index);
  }

  void editItem(int index, String newName, String newQuantity) {
    Item item = ItemList[index];
    item.name = newName;
    item.quantity = newQuantity;
  }

}

class Item {

  late final String name;
  late final String quantity;

  Item({required this.name, required this.quantity});
}