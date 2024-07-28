
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../modal/post_modal.dart';

class PostProvider extends ChangeNotifier {
  late PostModal postModal;

  Future<void> initPost() async {
    String json = await rootBundle.loadString('assets/json/post.json');
    final response = jsonDecode(json);
    postModal = PostModal.fromJson(response);
    notifyListeners();
  }
  PostJsonProvider() {
    initPost();
  }
}
