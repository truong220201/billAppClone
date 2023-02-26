import 'package:flutter/material.dart';

class AppDrawer extends StatefulWidget {
  const AppDrawer({super.key, this.img, this.token});
  final dynamic img;
  final String? token;
  @override
  // ignore: library_private_types_in_public_api
  _AppDrawerState createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  bool isLoading = true;
  showLoaderDialog(BuildContext context) {
    AlertDialog alert = AlertDialog(
      content: Row(
        children: [
          const CircularProgressIndicator(),
          Container(
              margin: const EdgeInsets.only(left: 7),
              child: const Text("Đăng xuất...")),
        ],
      ),
    );
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  void deleteCache() async {
    // isLoading ? showLoaderDialog(context) : null;

    // final prefs = await SharedPreferences.getInstance();
    // // Remove data
    // final deleteToken = await prefs.remove('token');
    // final deleteUser = await prefs.remove('user');
    // final setOffInfo = await prefs.setBool('haveInfo', false);
    // //
    // setState(() {
    //   isLoading = false;
    // });

    // Navigator.of(context).pushAndRemoveUntil(
    //     MaterialPageRoute(builder: (context) => SignIn()),
    //     (Route<dynamic> route) => false);

    // // Navigator.push(
    // //   context,
    // //   MaterialPageRoute(
    // //     builder: (context) => SignIn(),
    // //   ),
    // // );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250,
      child: Drawer(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment(
                  1.0, 0.0), // 10% of the width, so there are ten blinds.
              colors: [
                Color(0xFF444152),
                Color.fromARGB(255, 115, 165, 161)
              ], // whitish to gray
              tileMode:
                  TileMode.repeated, // repeats the gradient over the canvas
            ),
          ),
          child: ListView(
            padding: const EdgeInsets.all(10.0),
            children: [
              const ListTile(
                leading: Icon(
                  Icons.home,
                  color: Colors.white,
                ),
                title: Text(
                  'Home',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              ListTile(
                leading: const Icon(
                  Icons.person,
                  color: Colors.white,
                ),
                title: TextButton(
                  style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                      minimumSize: const Size(50, 30),
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      alignment: Alignment.centerLeft),
                  onPressed: () {
                    deleteCache();
                  },
                  child: const Text(
                    'Sign out',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              const ListTile(
                leading: Icon(
                  Icons.help_outline,
                  color: Colors.white,
                ),
                title: Text(
                  'Help',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
