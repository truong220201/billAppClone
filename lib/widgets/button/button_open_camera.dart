// // ignore_for_file: prefer_typing_uninitialized_variables

// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';
// import 'dart:io';
// import 'package:dio/dio.dart';
// import '../../screens/home/home_page.dart';

// class CustomButtonOpenCamera extends StatelessWidget {
//   const CustomButtonOpenCamera({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 120,
//       decoration: const BoxDecoration(
//         color: Color.fromARGB(255, 31, 162, 26),
//         borderRadius: BorderRadius.only(
//             topLeft: Radius.circular(20.0), bottomLeft: Radius.circular(20.0)),
//       ),
//       child: MaterialButton(
//         padding: const EdgeInsets.all(0),
//         onPressed: (() =>
//             _handleURLButtonPress(context, ImageSourceType.gallery)),
//         child: const Text(
//           "BROWSER",
//           style: TextStyle(color: Colors.white70, fontWeight: FontWeight.bold),
//         ),
//       ),
//     );
//   }
// }

// postWeb(image) async {
//   {
//     // List<int> imageBytes =
//     //     await _imageFile!
//     //         .readAsBytesSync();
//     // String base64Image =
//     //     base64Encode(imageBytes);
//     //print('hello');
//     //print(image.path);
//     var dio = Dio();
//     String filePath = image.path;
//     String fileName = filePath.split('/').last;
//     var formData = FormData.fromMap({
//       "images": await MultipartFile.fromFile(filePath, filename: fileName),
//       "id_cam": 4,
//     });
//     var response =
//         await dio.post('http://129.150.44.151/api/images', data: formData);
//     // var response = await dio.post(
//     //   'http://192.168.0.114:5000/im_size',
//     // );
//     //var jsontext = await json.decode(response.toString());
//     //print('jsonnn' + jsontext.toString());
//     // var Information = await jsontext["Information"];
//     // var face_img = await jsontext["img_face"];
//     // var img_GTTT = await jsontext["img_GTTT"];
//     //decode img 64
//     // final face_img1 = await base64Decode(face_img!);
//     // final img_GTTT1 = await base64Decode(img_GTTT!);
//   }
// }

// toHomePage(context, image) {
//   Navigator.push(
//     context,
//     MaterialPageRoute(
//       builder: (context) => MyHomePage(
//         img: image,
//         nameImg: image.path.toString(),
//       ),
//     ),
//   );
// }

// void _handleURLButtonPress(BuildContext context, var type) {
//   Navigator.push(context,
//       MaterialPageRoute(builder: (context) => ImageFromGalleryEx(type)));
// }

// class ImageFromGalleryEx extends StatefulWidget {
//   // ignore: prefer_typing_uninitialized_variables
//   final type;
//   const ImageFromGalleryEx(this.type, {super.key});

//   @override
//   // ignore: no_logic_in_create_state
//   ImageFromGalleryExState createState() => ImageFromGalleryExState(type);
// }

// enum ImageSourceType { gallery, camera }

// class ImageFromGalleryExState extends State<ImageFromGalleryEx> {
//   var _image;
//   var imagePicker;
//   var type;

//   ImageFromGalleryExState(this.type);

//   @override
//   void initState() {
//     super.initState();
//     imagePicker = ImagePicker();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//           title: Text(type == ImageSourceType.camera
//               ? "Xem trước"
//               : "Image from Gallery")),
//       body: Column(
//         children: <Widget>[
//           const SizedBox(
//             height: 52,
//           ),
//           Center(
//             child: GestureDetector(
//               onTap: () async {
//                 var source = type == ImageSourceType.camera
//                     ? ImageSource.camera
//                     : ImageSource.gallery;
//                 XFile image = await imagePicker.pickImage(
//                     source: source,
//                     imageQuality: 50,
//                     preferredCameraDevice: CameraDevice.front);
//                 setState(() {
//                   _image = File(image.path);
//                 });
//               },
//               child: Column(children: [
//                 Container(
//                   width: 200,
//                   height: 200,
//                   decoration: BoxDecoration(color: Colors.red[200]),
//                   child: _image != null
//                       ? Image.file(
//                           _image,
//                           width: 200.0,
//                           height: 200.0,
//                           fit: BoxFit.fitHeight,
//                         )
//                       : Container(
//                           decoration: BoxDecoration(color: Colors.red[200]),
//                           width: 200,
//                           height: 200,
//                           child: Icon(
//                             Icons.camera_alt,
//                             color: Colors.grey[800],
//                           ),
//                         ),
//                 ),
//                 TextButton(
//                     onPressed: () async {
//                       toHomePage(context, _image);
//                     },
//                     child: const Text('Nhập ảnh'))
//               ]),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
