import 'dart:convert';
import 'dart:developer';

import 'package:demo_project/models/data_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class HomeProvider extends ChangeNotifier {
  DataResponse? dataResponse;

  void getData() async {
    final url = Uri.parse('https://jsonplaceholder.typicode.com/posts');
    try {
      final response = await get(url);
      final data = jsonDecode(response.body);
      if (response.statusCode == 200) {
        log(response.body.toString());
      }
    } catch (error) {}
  }
}
