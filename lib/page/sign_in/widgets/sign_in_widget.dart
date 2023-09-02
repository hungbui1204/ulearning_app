import 'package:flutter/material.dart';

AppBar buildAppBar() {
  return AppBar(
    elevation: 0,
    backgroundColor: Colors.white,
    title: const Center(
      child: Text(
        'Log In',
        style: TextStyle(
            fontSize: 16, fontWeight: FontWeight.normal, color: Colors.black),
      ),
    ),
    bottom: PreferredSize(
        preferredSize: const Size.fromHeight(1),
        child: Container(
          height: 1,
          color: Colors.grey.shade300,
        )),
  );
}

Widget customTextField(
    {String? hintText,
    Widget? prefixIcon,
    Widget? suffixIcon,
    required bool showText,
    void Function(String value)? func}) {
  return SizedBox(
    height: 60,
    width: 320,
    child: TextField(
      onChanged: (value) => func!(value),
      obscureText: !showText,
      cursorColor: Colors.black,
      decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(fontSize: 14, color: Colors.grey.shade400),
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          focusedBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(20))),
          border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)))),
    ),
  );
}
