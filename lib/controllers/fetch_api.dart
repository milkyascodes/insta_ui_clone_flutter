import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller.dart';

class Provider extends GetConnect {
  Future getFriends() async {
    final response = await get('https://reqres.in/api/users?page=1');

    if (response.hasError) {
      return Future.error(response.statusCode!);
    } else {
      return response.body['data'];
    }
  }
}
