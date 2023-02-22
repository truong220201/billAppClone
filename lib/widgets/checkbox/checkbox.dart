// import 'package:flutter/material.dart';

// class CustomCheckbox extends StatefulWidget {
//   const CustomCheckbox({
//     super.key,
//     this.isChecked = false,
//     required this.onChange,
//     this.size = 24,
//     this.selectedColor,
//     this.selectedIconColor = Colors.white,
//     this.borderColor,
//   });
//   final Function(bool isChecked) onChange;
//   final bool isChecked;
//   final double size;
//   final Color? selectedColor;
//   final Color? selectedIconColor;
//   final Color? borderColor;

//   @override
//   CustomCheckboxState createState() => CustomCheckboxState();
// }

// class CustomCheckboxState extends State<CustomCheckbox> {
//   bool _isSelected = false;

//   @override
//   void initState() {
//     _isSelected = widget.isChecked;
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () {
//         setState(() {
//           _isSelected = !_isSelected;
//           widget.onChange(_isSelected);
//         });
//       },
//       child: AnimatedContainer(
//         margin: const EdgeInsets.all(4),
//         duration: const Duration(milliseconds: 500),
//         curve: Curves.fastLinearToSlowEaseIn,
//         decoration: BoxDecoration(
//           color: _isSelected ? context.colorScheme.primary : Colors.transparent,
//           borderRadius: BorderRadius.circular(7.0),
//           border: Border.all(
//             color: context.colorScheme.primary,
//             width: 1.5,
//           ),
//         ),
//         width: widget.size,
//         height: widget.size,
//         child: _isSelected
//             ? Icon(
//                 Icons.check,
//                 color: widget.selectedIconColor,
//                 size: 12,
//               )
//             : null,
//       ),
//     );
//   }
// }
