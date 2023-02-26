import 'dart:async';

import 'package:bill_app/data/model/user.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../common/base/base_view_model.dart';
import '../../../home/home_page.dart';
import 'repository/login_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginViewModel extends BaseViewModel<List<User>> {
  final LoginRepository _repository = Get.find<LoginRepository>();
  bool loginSuccest = false;
  String emailOrUserName = '';
  String password = '';
  @override
  Future<List<User>> initialData() async {
    loginSuccest = false;
    final List<User> lstUser = await _repository.signIn();
    return lstUser;
  }

  void onPressTest(
      BuildContext context, String userEmail, String password) async {
    debugPrint(userEmail);
    final List<User> lstUser = await _repository.signIn();
    debugPrint(lstUser.toString());
    if (await checkUser(lstUser, context, userEmail, password)) {
      await Future.delayed(Duration(seconds: 1));
      // ignore: use_build_context_synchronously
      // Navigator.push(
      //   context,
      //   MaterialPageRoute(builder: (context) => MyHomePageEx()),
      // );
      Get.offAndToNamed('home');
      //Get.to(MyHomePageEx());
    } else {}
  }
}

void showNotification(BuildContext context, String content, bool complete) {
  final snackBar = SnackBar(
    content: Text(
      content,
      style: TextStyle(
          color: complete
              ? const Color.fromARGB(255, 98, 255, 77)
              : const Color.fromARGB(255, 255, 95, 77)),
    ),
    // action: SnackBarAction(
    //   label: 'Undo',
    //   onPressed: () {
    //     // Some code to undo the change.
    //   },
    // ),
  );

  // Find the ScaffoldMessenger in the widget tree
  // and use it to show a SnackBar.
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}

void succest() {}

void saveUserLocal(User infoUser) async {
  final prefs = await SharedPreferences.getInstance();
// Save an integer value to 'counter' key.
  await prefs.setString('userName', infoUser.username);
  //await prefs.setString('password', infoUser.password);
}

bool checkUser(List<User> userList, BuildContext context, String userEmail,
    String password) {
  if (userEmail == '') {
    showNotification(context, 'Email khong duoc de trong', false);
  } else if (password == '') {
    showNotification(context, 'Mat khau khong duoc de trong', false);
  } else {
    for (int i = 0; i < userList.length; i++) {
      if (userList[i].email == userEmail || userList[i].username == userEmail) {
        if (userList[i].password == password) {
          succest();
          showNotification(context, 'Dang nhap thanh cong', true);
          saveUserLocal(userList[i]);
          return true;
        }
        showNotification(context, 'Email hoac mat khau khong dung', false);
      }
      //showNotification(context, 'Email hoac mat khau khong dung', false);
    }
  }

  return false;
}
