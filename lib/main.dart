import 'package:bill_app/feature/home/home_page.dart';
import 'package:bill_app/feature/home/home_view_model.dart';
import 'package:bill_app/router/router.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'feature/authentication/screen/login/login.dart';
import 'feature/authentication/screen/login/login_view_model.dart';
import 'package:binder/binder.dart';

import 'feature/home/home_binder.dart';

// void main() {
//   runApp(MyApp());
// }
void main() {
  runApp(GetMaterialApp(
    // initialRoute: '/',
    // getPages: [
    //   GetPage(
    //     name: '/',
    //     page: () => LoginScreen(),
    //   ),
    //   GetPage(
    //       name: '/home',
    //       page: () => const MyHomePageEx(),
    //       binding: HomeBinder()),
    // ],
    initialRoute: Routers.initialRoute,
    unknownRoute: Routers.unknownRoute,
    getPages: Routers.pages,
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginScreen(),
    );
  }
}
