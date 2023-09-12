import 'package:flutter/material.dart';

AppBar buildProfileAppBar(BuildContext context) {
  return AppBar(
    toolbarHeight: 65,
    automaticallyImplyLeading: false,
    elevation: 0,
    backgroundColor: Colors.white,
    title: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Builder(
          builder: (context) => SizedBox(
            height: 20,
            width: 15,
            child: IconButton(
                padding: EdgeInsets.zero,
                onPressed: () => Scaffold.of(context).openDrawer(),
                icon: SizedBox(
                    height: 15,
                    width: 15,
                    child: Image.asset('assets/icons/menu_bar.png'))),
          ),
        ),
        const Text(
          'Profile',
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        SizedBox(
          height: 15,
          width: 15,
          child: Image.asset('assets/icons/menu_dots.png'),
        )
      ],
    ),
  );
}

Stack profileAvatar() {
  return Stack(
    children: [
      Container(
          height: 60,
          width: 60,
          child: CircleAvatar(
            backgroundImage: AssetImage('assets/icons/user1.png'),
          )),
      Container(
        padding: EdgeInsets.all(3),
        margin: EdgeInsets.only(top: 42, left: 42),
        height: 18,
        width: 18,
        decoration: BoxDecoration(
            color: Colors.deepPurple, borderRadius: BorderRadius.circular(5)),
        child: Image.asset(
          'assets/icons/update.png',
          color: Colors.white,
          fit: BoxFit.fill,
        ),
      ),
    ],
  );
}

Widget bigButton(String imgPath, String title) {
  return SizedBox(
    height: 55,
    width: 98,
    child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.deepPurple,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15))),
        onPressed: () {},
        child: Padding(
          padding: const EdgeInsets.only(top: 8, left: 4, right: 4),
          child: Column(
            children: [
              SizedBox(
                height: 18,
                width: 18,
                child: Image.asset(
                  imgPath,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                title,
                style: const TextStyle(
                    fontSize: 10,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        )),
  );
}

Widget rowIcon(String imgPath, String title) {
  return Row(
    children: [
      SizedBox(
          height: 40,
          width: 40,
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(10),
                  backgroundColor: Colors.deepPurple,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15))),
              onPressed: () {},
              child: Image.asset(
                imgPath,
                fit: BoxFit.fill,
                color: Colors.white,
              ))),
      SizedBox(
        width: 10,
      ),
      Text(
        title,
        style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
      )
    ],
  );
}
