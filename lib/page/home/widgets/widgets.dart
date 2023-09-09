import 'package:flutter/material.dart';

AppBar buildHomeAppBar(BuildContext context) {
  return AppBar(
    toolbarHeight: 60,
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
        SizedBox(
          height: 30,
          width: 30,
          child: Image.asset('assets/icons/user1.png'),
        )
      ],
    ),
  );
}

Drawer buildHomeDrawer() {
  return Drawer(
    child: ListView(
      children: [DrawerHeader(child: Text('adadsd'))],
    ),
  );
}
