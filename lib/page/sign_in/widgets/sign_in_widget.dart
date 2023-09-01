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

Widget bodyAppBar() {
  return Column(
    children: [
      const SizedBox(
        height: 40,
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 60),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: () {},
              child: Container(
                padding: const EdgeInsets.all(4),
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.grey.shade300),
                ),
                child: const CircleAvatar(
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage('assets/icons/google_icon.png'),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.grey.shade300),
                ),
                child: const CircleAvatar(
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage('assets/icons/facebook_icon.png'),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                padding: const EdgeInsets.all(4),
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.grey.shade300),
                ),
                child: const CircleAvatar(
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage('assets/icons/apple_icon.png'),
                ),
              ),
            )
          ],
        ),
      ),
      const SizedBox(
        height: 20,
      ),
      const Text(
        'Or use your email account to login',
        style: TextStyle(color: Colors.grey),
      ),
      const SizedBox(
        height: 60,
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Email',
              style: TextStyle(color: Colors.grey),
            ),
            const SizedBox(
              height: 10,
            ),
            customTextField(
              showText: true,
              hintText: 'Enter your email address',
              prefixIcon: const Icon(
                Icons.account_circle,
                color: Colors.black,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Password',
              style: TextStyle(color: Colors.grey),
            ),
            const SizedBox(
              height: 10,
            ),
            customTextField(
                showText: false,
                hintText: 'Enter your password',
                prefixIcon: const Icon(
                  Icons.lock,
                  color: Colors.black,
                )),
            TextButton(
                onPressed: () {},
                child: Text(
                  'Forgot your password?',
                  style: TextStyle(
                      fontWeight: FontWeight.normal,
                      color: Colors.black,
                      fontSize: 14,
                      decoration: TextDecoration.underline),
                )),
          ],
        ),
      ),
      SizedBox(
        height: 50,
      ),
      SizedBox(
          height: 50,
          width: 320,
          child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.indigo,
                  shadowColor: Colors.transparent,
                  side: const BorderSide(color: Colors.grey),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15))),
              child: const Text(
                'Log In',
                style: TextStyle(fontSize: 16),
              ))),
      const SizedBox(
        height: 20,
      ),
      SizedBox(
          height: 50,
          width: 320,
          child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey.shade200,
                  shadowColor: Colors.transparent,
                  side: const BorderSide(color: Colors.grey),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15))),
              child: const Text(
                'Sign Up',
                style: TextStyle(fontSize: 16, color: Colors.black),
              )))
    ],
  );
}

Widget customTextField(
    {String? hintText,
    Widget? prefixIcon,
    Widget? suffixIcon,
    required bool showText}) {
  return SizedBox(
    height: 60,
    width: 320,
    child: TextField(
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
