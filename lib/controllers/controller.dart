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

// controller

class SingleController extends GetxController with StateMixin {
  @override
  void onInit() {
    super.onInit();
    provider.getUser().then((value) {
      change(value, status: RxStatus.success());
    }, onError: (error) {
      change(null, status: RxStatus.error(error.toString()));
    });
  }
}









// Future<User> fetchUser() async {
//   final response = await http.get(Uri.parse('https://reqres.in/api/users/1'));

//   if (response.statusCode == 200) {
//     // If the server did return a 200 OK response,
//     // then parse the JSON.
//     print(response.body);
//     return User.fromJson(jsonDecode(response.body)['data']);
//   } else {
//     // If the server did not return a 200 OK response,
//     // then throw an exception.
//     throw Exception('Failed to load User');
//   }
// }

// class User {
//   final int id;
//   final String name;
//   final String avatar;
//   const User({
//     required this.id,
//     required this.name,
//     required this.avatar,
//   });

//   factory User.fromJson(json) {
//     return User(
//         id: json['id'],
//         name: json['first_name'] + ' ' + json['last_name'],
//         avatar: json['avatar']);
//   }
// }