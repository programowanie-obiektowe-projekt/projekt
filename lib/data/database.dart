import 'package:hive_flutter/hive_flutter.dart';
import 'package:shopping_list_app/data/user.dart';

class DataBase {

  User? currentUser;

  List userList = [];

  final _myBox = Hive.box("USERLIST");

  void loadData(){
    userList = _myBox.get("USERLIST");
  }

  void updateData(){
    _myBox.put("USERLIST", userList);
  }

  void addUser(String username, String password){
    User user = User(username: username, password: password);
    userList.add(user);
    updateData();
  }

  int login(String username, String password){
    for (var user in userList){
      if (user.username == username && user.password == password){
        currentUser = user;
        return 1;
      }
    }
    return 0;
  }

}

