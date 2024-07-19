import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import '../modal/json_modal.dart';

class PhotoProvider extends ChangeNotifier
{
  List<JsonPhoto> photoList = [];
  Future<List> jsonParsing()
  async {
    String json = await rootBundle.loadString('assets/json/photo.json');
    List photo = jsonDecode(json);
    return photo;
  }

  Future<void> fromList()
  async {
    List photo = await jsonParsing() ;
    photoList = photo.map((e) => JsonPhoto.fromMap(e),).toList();
    notifyListeners();

   }
  PhotoProvider()
  {
    fromList();
  }

}