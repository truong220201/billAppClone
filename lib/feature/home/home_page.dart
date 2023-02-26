import 'package:bill_app/feature/home/home_view_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widgets/button/simple_round_icon_button.dart';
import './widgets/app_drawer.dart';

class MyHomePageEx extends GetView<HomeViewModel> {
  const MyHomePageEx({
    super.key,
  });

  // Future getDataLocal() async {
  @override
  Widget build(BuildContext context) {
    double fullHeight = MediaQuery.of(context).size.height;
    //double fullWidth = MediaQuery.of(context).size.width;
    var scaffoldKey = GlobalKey<ScaffoldState>();
    Get.lazyPut(() => HomeViewModel());
    return Center(
        child: Scaffold(
      endDrawer: const AppDrawer(),
      key: scaffoldKey,
      body: Container(
        height: fullHeight,
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment(
                1.0, 0.0), // 10% of the width, so there are ten blinds.
            colors: [
              Color(0xFF444152),
              Color.fromARGB(255, 115, 165, 161)
            ], // whitish to gray
            tileMode: TileMode.repeated, // repeats the gradient over the canvas
          ),
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 200,
            ),
            SimpleRoundIconButton(
              buttonText: Text('Hello, ${controller.state!}'),
            ),
            const SimpleRoundIconButton(
              buttonText: Text('Open camera'),
            ),
            const SimpleRoundIconButton(),
            const SimpleRoundIconButton(),
            const SimpleRoundIconButton(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          scaffoldKey.currentState!.openDrawer();
          scaffoldKey.currentState!.openEndDrawer();
        },
        tooltip: 'Increment',
        // ignore: prefer_const_literals_to_create_immutables
        label: Row(children: [
          const Icon(Icons.list),
          const SizedBox(
            width: 5,
          ),
          const Text('Menu')
        ]),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniStartTop,
    ));
  }
}
