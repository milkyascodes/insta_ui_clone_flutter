import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Provider extends GetConnect {
  Future getFriends() async {
    final response = await get('https://reqres.in/api/users?page=1');

    if (response.hasError) {
      return Future.error(response.statusCode!);
    } else {
      return response.body['data'];
    }
  }

  Future<dynamic> getUser() async {
    final response = await get('https://reqres.in/api/users/1');

    if (response.hasError) {
      return Future.error(response.statusCode!);
    } else {
      print(response.body['data']);
      return response.body['data'];
    }
  }
}
