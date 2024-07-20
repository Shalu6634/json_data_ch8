import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import '../modal/user_modal.dart';

class UserProvider extends ChangeNotifier
{
  List<UserModal>  userList=[];
  Future<void> jsonParsing()
  async {
    String json = await rootBundle.loadString('assets/json/user.json');
    List users = jsonDecode(json);
    userList = users.map((e) => UserModal.fromJson (e),).toList();
    notifyListeners();
  }

  UserProvider()
  {
    jsonParsing();
  }

}