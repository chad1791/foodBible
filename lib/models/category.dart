//import 'dart:convert';

import 'package:flutter/foundation.dart';
//import 'package:http/http.dart' as http;

class Category with ChangeNotifier {
  final String id;
  final String name;

  Category({
    @required this.id,
    @required this.name,
  });

  //Future<void> getCategories() async {}

  //Future<void> addCategory() async {}
}
