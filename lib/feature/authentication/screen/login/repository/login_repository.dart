import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/instance_manager.dart';

import '../../../../../data/model/user.dart';

class LoginRepository {
  LoginRepository();

  Future<List<User>> signIn() async {
    debugPrint('--------------signIn--------------');
    // print(userName + password);
    // String token =
    //     'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoxLCJleHAiOjE2NjkyMjE4NDQsImlhdCI6MTY2OTIyMTcyNH0.Yt2-hn6ZBqIzn6sbhskgUIcpEeLNoyqFi4jul3umkHc';
    try {
      var dio = Dio();
      // var response = await dio.post('http://13.251.241.50/api/user');
      // Map<String, String> mainheader = {
      //   "Authorization":
      //       'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoxLCJleHAiOjE2NjkyMjE4NDQsImlhdCI6MTY2OTIyMTcyNH0.Yt2-hn6ZBqIzn6sbhskgUIcpEeLNoyqFi4jul3umkHc',
      // };
      // var formData = FormData.fromMap({
      //   "email": userName,
      //   "password": password,
      // });
      // var jsontext = await json.decode(response.toString());

      var responseLogin = await dio.get('http://66.42.63.201:3000/users/');
      //var jsontext = await json.decode(responseLogin.toString());
      Map<String, dynamic> jsonMap = json.decode(responseLogin.toString());

      //debugPrint(jsonMap["data"].toString());
      List<dynamic> userList = jsonMap["data"];
      //
      List<User> userListAdd =
          userList.map((dynamic item) => User.fromJson(item)).toList();
      // List<User> userListAdd;
      // userListAdd = userList;
      debugPrint(userListAdd[0].email.toString());

      return userListAdd;
    } catch (e) {
      debugPrint(e.toString());
      return [];
    }

    //print(token);
    // return true;

    // var Information = await jsontext["Information"];
    // var face_img = await jsontext["img_face"];
    // var img_GTTT = await jsontext["img_GTTT"];
    // final face_img1 = await base64Decode(face_img!);
    // final img_GTTT1 = await base64Decode(img_GTTT!);
  }
}
