import 'dart:ui';

import 'package:flutter/material.dart';

Widget buildTitle(String text) {
  return Text(
    text,
    style: TextStyle(
      fontSize: 20,
      color: Colors.redAccent,
      fontWeight: FontWeight.bold,
    ),
  );
}

Widget subTitle(String text) {
  return Padding(
    padding: const EdgeInsets.only(top: 10),
    child: Text(
      text,
      style: TextStyle(
        fontSize: 16,
        color: Colors.black,
        fontWeight: FontWeight.w500,
      ),
    ),
  );
}

Widget buildRadioButton({String value, var groupValue, Function onChanged}) {
  return Transform.scale(
    scale: 1.5,
    child: Radio(
      activeColor: Colors.red,
      value: value,
      groupValue: groupValue,
      onChanged: onChanged,
    ),
  );
}

Widget buildTextField({
  String text,
  double width,
  double height,
  BorderRadiusGeometry borderRadius,
  TextEditingController controller,
}) {
  return Center(
    child: Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      padding: EdgeInsets.only(left: 20, top: 5),
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: borderRadius,
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 2.0,
            offset: Offset(1, 1),
          ),
        ],
      ),
      child: TextField(
        controller: controller,
        style: TextStyle(color: Colors.black, fontSize: 20),
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: text,
          hintStyle: TextStyle(color: Colors.black45, fontSize: 16),
        ),
      ),
    ),
  );
}

Widget buildaddPhoto({Function onTap}) {
  return InkWell(
    onTap: onTap,
      child: Container(
      height: 80,
      width: 80,
      margin: const EdgeInsets.only(top: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 2.0,
            offset: Offset(1, 1),
          ),
        ],
      ),
      child: Icon(
        Icons.camera_alt_rounded,
        color: Colors.redAccent,
        size: 40,
      ),
    ),
  );
}
