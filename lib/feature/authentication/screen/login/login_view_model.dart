import 'dart:async';

import 'package:bill_app/data/model/user.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../common/base/base_view_model.dart';
import 'repository/login_repository.dart';

class LoginViewModel extends BaseViewModel<List<User>> {
  final LoginRepository _repository = Get.find<LoginRepository>();
  @override
  Future<List<User>> initialData() async {
    final List<User> lstUser = await _repository.signIn();
    return lstUser;
  }

  void onPressTest() async {
    debugPrint('-----------');

    final List<User> lstUser = await _repository.signIn();
    debugPrint('-----------2');
  }
}
