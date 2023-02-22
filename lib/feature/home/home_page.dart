import 'package:flutter/material.dart';

import '../../widgets/button/simple_round_icon_button.dart';
import '../../widgets/loader/load_widget.dart';
import '../../widgets/textfield/textF_field_with_button.dart';
import './widgets/app_drawer.dart';
import 'package:flutter/services.dart';
import '../upload/upload.dart';

void _handleURLButtonPress(BuildContext context, var type) {
  // Navigator.push(context,
  //     MaterialPageRoute(builder: (context) => ImageFromGalleryEx(type))
  //     );
}

class MyHomePageEx extends StatefulWidget {
  const MyHomePageEx({
    super.key,
    this.img,
    this.nameImg,
  });
  final dynamic img;

  final String? nameImg;

  @override
  State<MyHomePageEx> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePageEx> {
  double? lat = 21;
  double? long = 105;
  String? address = '';
  String userName = '';
  String password = '';
  String token = '';
  String unit = '';
  String province = '';
  String district = '';
  String ward = '';
  bool isLoading = true;
  bool neverAsk = false;
  bool denied = false;
  String androidInfo = '';
  // int start = 0;
  // int getLocation = 0;
  // int getlocationData = 0;
  // int getMyLocation = 0;
  // int deniedok = 0;
  // int neveraskok = 0;
  // int coordi = 0;
  // int addressed = 0;
  // int setStateOK = 0;
  // int ganbien = 0;
  // getDeviceInformation() async {
  //   DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
  //   AndroidDeviceInfo androidInfomation = await deviceInfo.androidInfo;

  //   String adif = androidInfomation.model.toString();
  //   setState(() {
  //     androidInfo = adif;
  //   });
  // }

  // getUserLocation() async {
  //   // setState(() {
  //   //   start++;
  //   // });
  //   Location location = Location();
  //   // setState(() {
  //   //   getLocation++;
  //   // });
  //   // setState(() {
  //   //   getlocationData++;
  //   // });
  //   //_locationData = await location.getLocation();

  //   LocationData? myLocation;
  //   // setState(() {
  //   //   getMyLocation++;
  //   // });
  //   //Location location = Location();
  //   try {
  //     myLocation = await location.getLocation();
  //   } on PlatformException catch (e) {
  //     if (e.code == 'PERMISSION_DENIED') {
  //       //print('error 1');
  //       // setState(() {
  //       //   deniedok++;
  //       //   denied = true;
  //       // });
  //     }
  //     if (e.code == 'PERMISSION_DENIED_NEVER_ASK') {
  //       setState(() {
  //         //neveraskok++;
  //         neverAsk = true;
  //       });
  //     }
  //   }

  //   final coordinates = Coordinates(myLocation!.latitude, myLocation.longitude);
  //   // setState(() {
  //   //   coordi++;
  //   // });
  //   //print('----------------' + coordinates.toString());
  //   var addresses =
  //       await Geocoder.local.findAddressesFromCoordinates(coordinates);

  //   // setState(() {
  //   //   addressed++;
  //   // });
  //   //print('-----------' + addresses.toString());
  //   var first = await addresses.first;
  //   double? latitude = myLocation.latitude;
  //   double? longitude = myLocation.longitude;
  //   String locality = first.locality;
  //   String localitya = first.locality;
  //   String thoroughfare = first.thoroughfare;
  //   String addressLine = first.addressLine;
  //   // setState(() {
  //   //   ganbien++;
  //   // });

  //   // print(
  //   //     'dia chi:  ${first.locality}, ${first.adminArea},${first.subLocality}, ${first.subAdminArea},${first.addressLine}, ${first.featureName},${first.thoroughfare}, ${first.subThoroughfare}');
  //   setState(() {
  //     lat = latitude;
  //     long = longitude;
  //     unit = locality;
  //     province = localitya;
  //     district = thoroughfare;
  //     ward = addressLine;
  //     isLoading = false;
  //     //address = first.locality;
  //   });
  //   // setState(() {
  //   //   setStateOK++;
  //   // });
  // }

  toUpload(imge, nameImg, token, user, pass) {
    // ignore: use_build_context_synchronously
    // Navigator.push(
    //   context,
    //   MaterialPageRoute(
    //     builder: (context) => Upload(
    //       name: androidInfo,
    //       lati: lat!,
    //       longti: long!,
    //       unit: unit,
    //       province: province,
    //       district: district,
    //       ward: ward,
    //       address: '',
    //       img: imge,
    //       nameImg: nameImg,
    //       token: token,
    //       user: user,
    //       pass: pass,
    //     ),
    //   ),
    // );
  }

  showLoaderDialog(BuildContext context) {
    AlertDialog alert = AlertDialog(
      content: Row(
        children: [
          const CircularProgressIndicator(),
          Container(
              margin: const EdgeInsets.only(left: 7),
              child: const Text("Lưu thông tin...")),
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

  denieda(BuildContext context) {
    AlertDialog alert = AlertDialog(
      content: Row(
        children: [
          const CircularProgressIndicator(),
          Container(
              margin: const EdgeInsets.only(left: 7),
              child: const Text("Denied")),
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

  neverAska(BuildContext context) {
    AlertDialog alert = AlertDialog(
      content: Row(
        children: [
          const CircularProgressIndicator(),
          Container(
              margin: const EdgeInsets.only(left: 7),
              child: const Text("Never Ask")),
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

  // Future getDataLocal() async {
  //   //await getUserLocation();
  //   //await denieda(context);
  //   //await neverAska(context);
  //   // Obtain shared preferences.
  //   final prefs = await SharedPreferences.getInstance();
  //   // Try reading data from the 'counter' key. If it doesn't exist, returns null.
  //   final String? getToken = prefs.getString('token');
  //   String tokenn = getToken!;
  //   final List<String>? getUser = prefs.getStringList('user');
  //   List<String>? getUserr = getUser!;
  //   //print(getToken);
  //   setState(() {
  //     token = tokenn;
  //     userName = getUserr[0];
  //     password = getUserr[1];
  //   });
  //   //call this async method from whereever you need
  // }

  // alll() async {
  //   await getDataLocal();
  //   await getUserLocation();
  //   await getDeviceInformation();
  // }

  // @override
  // void initState() {
  //   alll();
  //   super.initState();
  // }

  // final List<String> entries = <String>['Bán kính', 'Tên người đại diện'];
  // final List<int> colorCodes = <int>[600, 100];

  @override
  Widget build(BuildContext context) {
    double fullHeight = MediaQuery.of(context).size.height;
    double fullWidth = MediaQuery.of(context).size.width;
    var scaffoldKey = GlobalKey<ScaffoldState>();
    return denied
        ? Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(lat.toString() + ',' + long.toString()),
                Text('getLocation:' + unit.toString()),
                //TextButton(onPressed: getUserLocation, child: Text('reset gps'))
              ],
            ),
          )
        : neverAsk
            ? Center(child: Text('never ask'))
            : isLoading
                ? Center(
                    child: ColorLoader2(
                    color1: Colors.redAccent,
                    color2: Colors.deepPurple,
                    color3: Colors.green,
                  ))
                : Scaffold(
                    key: scaffoldKey,
                    // endDrawer:
                    // AppDrawer(
                    //   img: widget.img,
                    //   token: token,
                    // ),
                    body: Container(
                      height: fullHeight,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment(1.0,
                              0.0), // 10% of the width, so there are ten blinds.
                          colors: [
                            Color(0xFF444152),
                            Color.fromARGB(255, 115, 165, 161)
                          ], // whitish to gray
                          tileMode: TileMode
                              .repeated, // repeats the gradient over the canvas
                        ),
                      ),
                      child: SingleChildScrollView(
                        child: Container(
                          margin: const EdgeInsets.only(top: 150),
                          child: Column(
                            children: [
                              const Text(
                                "Nhập camera",
                                style: TextStyle(
                                    fontSize: 17,
                                    color: Color.fromARGB(255, 15, 46, 90),
                                    fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(height: 10),
                              Container(
                                width: 300,
                                height: 300,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white),
                                  borderRadius: BorderRadius.circular(20.0),
                                  color:
                                      const Color.fromARGB(255, 184, 184, 184),
                                ),
                                child: widget.img != null
                                    ? Image.file(
                                        widget.img,
                                        width: 300.0,
                                        height: 300.0,
                                        fit: BoxFit.fitHeight,
                                      )
                                    : TextButton(
                                        // onPressed: (() => _handleURLButtonPress(
                                        //     context, ImageSourceType.camera)),
                                        onPressed: (() {}),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20.0),
                                          ),
                                          width: 300,
                                          height: 300,
                                          child: const Icon(
                                            Icons.camera_alt,
                                            color: Color.fromARGB(
                                                255, 255, 255, 255),
                                          ),
                                        ),
                                      ),
                              ),
                              const SizedBox(
                                height: 50,
                              ),
                              TextFieldWithButton(
                                  hintText: widget.nameImg == null
                                      ? 'Select Image'
                                      : widget.nameImg.toString(),
                                  button: SimpleRoundIconButton()

                                  //const CustomButtonOpenCamera()
                                  ),
                              SimpleRoundIconButton(
                                onPressed: () {
                                  toUpload(widget.img, widget.nameImg, token,
                                      userName, password);
                                },
                                backgroundColor:
                                    const Color.fromARGB(255, 25, 25, 25),
                                buttonText: const Text(
                                  "Tiếp tục",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                                iconColor:
                                    const Color.fromARGB(255, 255, 255, 255),
                                icon: const Icon(Icons.map),
                              ),
                            ],
                          ),
                        ),
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
                        const Text('CamMis')
                      ]),
                    ),
                    floatingActionButtonLocation:
                        FloatingActionButtonLocation.miniStartTop,
                  );
  }
}
