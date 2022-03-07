import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'fetch_api.dart';

class NavController extends GetxController {
  var tabIndex = 0.obs;
}

final provider = Get.put(Provider());

class DataController extends GetxController with StateMixin<List<dynamic>> {
  @override
  void onInit() {
    super.onInit();

    provider.getFriends().then((value) {
      change(value, status: RxStatus.success());
    }, onError: (error) {
      change(null, status: RxStatus.error(error.toString()));
    });
  }
}
