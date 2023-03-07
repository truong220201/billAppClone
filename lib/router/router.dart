import 'package:bill_app/feature/home/home_binder.dart';
import 'package:bill_app/feature/home/home_page.dart';
import 'package:bill_app/feature/other/create_page.dart';
import 'package:get/get.dart';

import '../feature/authentication/screen/login/login.dart';
import '../feature/authentication/screen/login/login_binder.dart';
import '../feature/other/empy_page.dart';

class Routers {
  const Routers._();

  static String? get initialRoute => CreatePage.routePath;

  static GetPage get unknownRoute => GetPage(
        name: EmptyPage.routePath,
        page: () => EmptyPage(),
      );
  static List<GetPage> pages = [
    GetPage(
      name: LoginScreen.routePath,
      binding: LoginBinder(),
      page: () => LoginScreen(),
      //children: _auth,
    ),
    GetPage(
      name: MyHomePageEx.routePath,
      binding: HomeBinder(),
      page: () => const MyHomePageEx(),
      //children: _auth,
    ),
  ];
}
