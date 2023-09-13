import 'package:flutter/material.dart';

AppBar buildSettingsAppBar(BuildContext context) {
  return AppBar(
      toolbarHeight: 65,
      automaticallyImplyLeading: false,
      elevation: 0,
      backgroundColor: Colors.white,
      leading: IconButton(
          onPressed: Navigator.of(context).pop,
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          )),
      title: Text(
        'Settings',
        style: TextStyle(
            fontWeight: FontWeight.bold, fontSize: 16, color: Colors.black),
      ));
}

Widget logOutButton(BuildContext context, void Function() logOut) {
  return SizedBox(
    height: 40,
    width: 110,
    child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10))),
        onPressed: () {
          showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: Text('Confirm Logout'),
                  content: Text('Are you sure to log out?'),
                  actions: [
                    TextButton(onPressed: logOut, child: Text('Yes')),
                    TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text('Cancel'))
                  ],
                );
              });
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              height: 20,
              width: 20,
              child: Image.asset(
                'assets/icons/exit.png',
                color: Colors.deepPurple,
              ),
            ),
            Text(
              'Log Out',
              style: TextStyle(color: Colors.deepPurple),
            )
          ],
        )),
  );
}
