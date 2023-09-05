import 'package:flutter/material.dart';

AppBar buildAppBar({required String appBarName}) {
  return AppBar(
    actionsIconTheme: IconThemeData(color: Colors.black),
    elevation: 0,
    backgroundColor: Colors.white,
    title: Center(
      child: Text(
        appBarName,
        style: const TextStyle(
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

Widget logInButton({required String buttonName, void Function()? func}) {
  return SizedBox(
      height: 50,
      width: 320,
      child: ElevatedButton(
          onPressed: func,
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
              shadowColor: Colors.transparent,
              side: const BorderSide(color: Colors.grey),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15))),
          child: Text(
            buttonName,
            style: const TextStyle(fontSize: 16, color: Colors.white),
          )));
}

Widget signUpButton({required String buttonName, void Function()? func}) {
  return SizedBox(
      height: 50,
      width: 320,
      child: ElevatedButton(
          onPressed: func,
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.grey.shade200,
              shadowColor: Colors.transparent,
              side: const BorderSide(color: Colors.grey),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15))),
          child: Text(
            buttonName,
            style: TextStyle(fontSize: 16, color: Colors.black),
          )));
}
