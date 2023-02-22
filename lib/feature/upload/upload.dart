// import 'package:flutter/material.dart';
// import '../../widgets/button/button_open_camera.dart';
// import '../../widgets/button/simple_round_icon_button.dart';
// import '../../widgets/loader/load_widget.dart';
// import '../home/home_page.dart';

// class Upload extends StatefulWidget {
//   const Upload(
//       {super.key,
//       this.img,
//       this.nameImg,
//       required this.lati,
//       required this.longti,
//       required this.unit,
//       required this.province,
//       required this.district,
//       required this.ward,
//       this.address,
//       this.name,
//       this.user,
//       this.pass,
//       this.token});

//   final double lati;
//   final double longti;
//   final String unit;
//   final String province;
//   final String district;
//   final String ward;
//   final String? address;
//   final dynamic img;
//   final String? nameImg;
//   final String? name;
//   final String? token;
//   final String? user;
//   final String? pass;

//   @override
//   State<Upload> createState() => _Upload();
// }

// class _Upload extends State<Upload> {
//   double lat = 0;
//   double long = 0;
//   @override
//   void initState() {
//     super.initState();
//     lat = widget.lati;
//     long = widget.longti;
//   }

//   showNoti() {
//     showAwaitDialog<bool>(context, message: const Text('Đang lưu thông tin...'),
//         function: (context, updateMessage) async {
//       await Future.delayed(const Duration(seconds: 2));
//       updateMessage(const Text('Đẩy dữ liệu...'));
//       await Future.delayed(const Duration(seconds: 2));
//       // ignore: use_build_context_synchronously
//       await showSuccessDialog<bool>(
//         context,
//         title: const Text('Thành công!'),
//         content: const Text('Thông tin được gửi lên sever!'),
//       );
//       return true;
//     });
//   }

//   addImg(img) async {
//     var dio = Dio();
//     String filePath = img.path;
//     //String fileName = filePath.split('/').last;
//     var formData = FormData.fromMap({
//       "images": await MultipartFile.fromFile(filePath, filename: "test1.jpg"),
//       "id_cam": 2,
//     });
//     var response =
//         await dio.post('http://13.251.241.50/api/images', data: formData);
//     // var response = await dio.post(
//     //   'http://192.168.0.114:5000/im_size',
//     // );
//     // ignore: unused_local_variable
//   }

//   addCamera(img, name, acountName, lati, longi, pass, unit, province, district,
//       ward) async {
//     var dio = Dio();
//     // String filePath = img.path;
//     // //String fileName = filePath.split('/').last;
//     // var formData = FormData.fromMap({
//     //   "images": await MultipartFile.fromFile(filePath, filename: "test1.jpg"),
//     //   "id_cam": 2,
//     // });
//     // var response =
//     //     await dio.post('http://13.251.241.50/api/images', data: formData);
//     //var dioa = Dio();
//     //String fileName = filePath.split('/').last;
//     //print(name);
//     //print(lati.runtimeType);
//     //print('lati: ' + lati);
//     var formDataa = FormData.fromMap({
//       "name": name,
//       "account_name": acountName,
//       "latitude": lati,
//       "longitude": longi,
//       "account_password": pass,
//       //"name": "camera test2 hoang new",
//       "unit": unit,
//       // "latitude": "11.8120565",
//       // "longitude": "107.23887417",
//       "province": province,
//       "district": district,
//       "ward": ward,
//       "username": acountName,
//       "phone_number": "012344566789",
//       "camera_type": "Hik Vision",
//       "camera_model": "test 2",
//       "link": "http://77.89.48.19:8000/",
//       "port": 3306,
//       // "account_name": "admin",
//       // "account_password": "admin",
//       "receiver": "CAT hoang",
//       "channel": 1,
//       "online_archive": true,
//       "is_camera_ip": false,
//       "status": true,
//       "direction": 1,
//       "note": "cam test"
//     });
//     var responsea =
//         await dio.post('http://13.251.241.50/api/cam', data: formDataa);

//     // var response = await dio.post(
//     //   'http://192.168.0.114:5000/im_size',
//     // );

//     // ignore: unused_local_variable
//     //var jsontext = await json.decode(response.toString());
//   }

//   toHome(
//     context,
//     img,
//     name,
//     acountName,
//     lati,
//     longi,
//     unit,
//     province,
//     district,
//     ward,
//     token,
//     pass,
//   ) async {
//     //await addImg(img);
//     // print(img);
//     //print(name);
//     // print(acountName);
//     //print(lati.runtimeType);
//     // print(longi);
//     // print(token);
//     // print(pass);
//     await addCamera(img, name, acountName, lati.toString(), longi.toString(),
//         unit, province, district, ward, pass);
//     //print('done');
//     showNoti();
//     //print(widget.img!.path);
//     //() async {
//     // var dio = Dio();
//     // String filePath = img.path;
//     // //String fileName = filePath.split('/').last;
//     // var formData = FormData.fromMap({
//     //   "images": await MultipartFile.fromFile(filePath, filename: "test1.jpg"),
//     //   "id_cam": 2,
//     // });
//     // var response =
//     //     await dio.post('http://13.251.241.50/api/images', data: formData);
//     // // var response = await dio.post(
//     // //   'http://192.168.0.114:5000/im_size',
//     // // );
//     // // ignore: unused_local_variable
//     // var jsontext = await json.decode(response.toString());

//     // // await postWeb(_image);
//     // List<int> imageBytes = await widget.img!.readAsBytesSync();
//     // String base64Image = base64Encode(imageBytes);

//     // var dio = Dio();
//     // var formData = FormData.fromMap({
//     //   "images": '$base64Image',
//     //   "id_cam": 1,
//     // });

//     // var response = await dio.post('http://13.251.241.50/api/imagesbase64',
//     //     data: formData);
//     //};
//     //print('pres');
//   }

//   final List<String> entries = <String>[
//     'Bán kính',
//     'Tên người đại diện',
//     'Đường kính',
//     'Zoom',
//     'Danh sách',
//   ];
//   final List<int> colorCodes = <int>[600, 100, 900, 3, 10];

//   @override
//   Widget build(BuildContext context) {
//     double fullHeight = MediaQuery.of(context).size.height;
//     double fullWidth = MediaQuery.of(context).size.width;
//     var scaffoldKey = GlobalKey<ScaffoldState>();
//     bool loader = false;

//     final initialCameraPosition =
//         CameraPosition(target: LatLng(lat, long), zoom: 20);
//     return Scaffold(
//       key: scaffoldKey,
//       body: Container(
//         decoration: new BoxDecoration(
//           gradient: new LinearGradient(
//             begin: Alignment.centerLeft,
//             end: new Alignment(
//                 1.0, 0.0), // 10% of the width, so there are ten blinds.
//             colors: [
//               const Color(0xFF444152),
//               const Color.fromARGB(255, 115, 165, 161)
//             ], // whitish to gray
//             tileMode: TileMode.repeated, // repeats the gradient over the canvas
//           ),
//         ),
//         child: Column(
//           children: [
//             SizedBox(
//               height: 50,
//             ),
//             Container(
//               margin: EdgeInsets.only(top: 20),
//               child: const Text(
//                 "Upload Camera",
//                 style: TextStyle(
//                     fontSize: 17,
//                     color: Color.fromARGB(255, 255, 255, 255),
//                     fontWeight: FontWeight.bold),
//               ),
//             ),
//             SizedBox(
//               child: SingleChildScrollView(
//                 child: Column(children: [
//                   const SizedBox(height: 10),
//                   TextFieldWithButton(
//                       hintText: widget.nameImg == null
//                           ? 'No file selected'
//                           : widget.nameImg.toString(),
//                       button: const CustomButtonOpenCamera()),
//                   TextFieldWithIcon(
//                     hintText: widget.name ?? '',
//                     icon: const Icon(
//                       Icons.map,
//                       color: Color.fromARGB(255, 255, 255, 255),
//                     ),
//                   ),
//                   TextFieldWithIcon(
//                     hintText: widget.user ?? '',
//                     icon: const Icon(
//                       Icons.map,
//                       color: Color.fromARGB(255, 255, 255, 255),
//                     ),
//                   ),
//                   TextFieldWithIcon(
//                     hintText: widget.unit,
//                     icon: const Icon(
//                       Icons.map,
//                       color: Color.fromARGB(255, 252, 252, 255),
//                     ),
//                   ),
//                   TextFieldWithIcon(
//                     hintText: widget.district,
//                     icon: const Icon(
//                       Icons.map,
//                       color: Color.fromARGB(255, 255, 255, 255),
//                     ),
//                   ),
//                   TextFieldWithIcon(
//                     hintText: widget.ward,
//                     icon: const Icon(
//                       Icons.map,
//                       color: Color.fromARGB(255, 255, 255, 255),
//                     ),
//                   ),
//                   TextFieldTwiceWithIcon(
//                     firstHintText: lat == 0 ? 'Vĩ độ' : '$lat',
//                     seccondHintText: long == 0 ? 'Kinh độ' : '$long',
//                     icon: const Icon(
//                       Icons.map,
//                       color: Color.fromARGB(255, 255, 255, 255),
//                     ),
//                   ),
//                   const SizedBox(
//                     height: 20,
//                   ),
//                 ]),
//               ),
//             ),
//             Container(
//               padding: EdgeInsets.all(10),
//               child: Column(children: [
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   children: [
//                     TextButton(
//                         onPressed: () {
//                           toHome(
//                               context,
//                               widget.img,
//                               widget.name,
//                               widget.user,
//                               widget.lati,
//                               widget.longti,
//                               widget.unit,
//                               widget.province,
//                               widget.district,
//                               widget.ward,
//                               widget.token,
//                               widget.pass);
//                         },
//                         child: Text('Thêm Camera')),
//                     TextButton(
//                         onPressed: () => Navigator.push(
//                               context,
//                               MaterialPageRoute(
//                                 builder: (context) => MyHomePage(),
//                               ),
//                             ),
//                         child: Text('Về trang chủ'))
//                   ],
//                 ),
//               ]),
//             ),
//           ],
//         ),
//       ),
//       //floatingActionButtonLocation: FloatingActionButtonLocation.miniStartTop,
//     );
//   }
// }
