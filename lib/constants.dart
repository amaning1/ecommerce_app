import 'package:flutter/material.dart';

Color grayish = const Color(0xFFE4EBF2);
const textStyle0 = TextStyle(fontSize: 14, fontFamily: 'Poppins');

class Textfield0 extends StatelessWidget {
  const Textfield0({Key? key, required this.controller, this.icon})
      : super(key: key);

  final TextEditingController controller;
  final Icon? icon;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
          border: InputBorder.none,
          contentPadding: const EdgeInsets.only(left: 5),
          prefixIcon: icon,
          //Icon(Icons.search),
          labelText: 'Cleansers',
          floatingLabelStyle: const TextStyle(fontFamily: 'Poppins')),
    );
  }
}
