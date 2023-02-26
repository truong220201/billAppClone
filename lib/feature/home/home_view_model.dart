import 'dart:async';

import 'package:bill_app/data/model/user.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../common/base/base_view_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeViewModel extends BaseViewModel<String> {
  final HomeViewModel _repository = Get.find<HomeViewModel>();

  @override
  Future<String> initialData() async {
    final prefs = await SharedPreferences.getInstance();
// Save an integer value to 'counter' key.
    final String nameOfUser = await prefs.getString('userName');
    return nameOfUser;
  }
}
