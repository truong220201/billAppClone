import 'dart:async';

import 'package:bill_app/data/model/user.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../common/base/base_view_model.dart';

String? validUserPhone(String? value) {
  if (value != null) {
    if (value.isEmpty) {
      return 'Vui lòng nhập số điện thoại';
    } else if (!GetUtils.hasMatch(value, r'^0')) {
      return 'Số điện thoại phải bắt đầu bằng số 0';
    } else if (int.tryParse(value) == null) {
      return 'Số điện thoại chỉ chấp nhận ký tự 0-9';
    } else if (value.length < 10) {
      return 'Số điện thoại phải có ít nhất 10 số';
    }
  }
  return null;
}

String? validEmail(String? value) {
  if (value != null) {
    if (value.isEmpty) {
      return 'Vui lòng nhập email';
    } else if (!GetUtils.hasMatch(value,
        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")) {
      return 'Vui lòng nhập dung dinh dang email';
    }
  }
}

String? validPassword(String? value) {
  if (value != null) {
    if (value.isEmpty) {
      return 'Vui lòng nhập mật khẩu';
    } else if (!RegExp(r'^[A-Za-z\d!@#$%^&*-+\=]+$').hasMatch(value) ||
        value.contains(' ')) {
      return 'Không được nhập khoảng trắng và chữ có dấu';
    } else if (value.length > 32 || value.length < 8) {
      return 'Mật khẩu phải có từ 8-32 ký tự';
    }
  }
  return null;
}
