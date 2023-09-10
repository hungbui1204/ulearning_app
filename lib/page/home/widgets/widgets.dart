import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ulearning_app/page/home/bloc/home_blocs.dart';
import 'package:ulearning_app/page/home/bloc/home_events.dart';
import 'package:ulearning_app/page/home/bloc/home_states.dart';

AppBar buildHomeAppBar(BuildContext context) {
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

Widget sliderView(BuildContext context, HomeStates state) {
  return Column(
    children: [
      SizedBox(
        height: 180,
        child: PageView(
          onPageChanged: (value) {
            //print(value);
            BlocProvider.of<HomeBlocs>(context).add(SliderHomeEvent(value));
          },
          children: [
            _sliderContainer(path: 'assets/images/slider111.jpg'),
            _sliderContainer(path: 'assets/images/slider222.jpg'),
            _sliderContainer(path: 'assets/images/slider333.jpg'),
            _sliderContainer(path: 'assets/images/slider444.jpg'),
          ],
        ),
      ),
      Container(
        child: DotsIndicator(
          dotsCount: 4,
          position: state.index,
          decorator: DotsDecorator(
              color: Colors.grey,
              activeColor: Colors.deepPurple,
              size: Size.square(5),
              activeSize: Size(15, 5),
              activeShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5))),
        ),
      )
    ],
  );
}

Widget _sliderContainer({required String path}) {
  return Container(
    decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        image: DecorationImage(image: AssetImage(path), fit: BoxFit.fill)),
  );
}

Widget menuView() {
  return Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'Choice your course',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
          ),
          Text(
            'See All',
            style: TextStyle(fontSize: 12, color: Colors.grey.shade400),
          )
        ],
      ),
      SizedBox(
        height: 10,
      ),
      Row(
        children: [
          Container(
            height: 22,
            width: 40,
            decoration: BoxDecoration(
                color: Colors.deepPurple,
                borderRadius: BorderRadius.circular(5)),
            child: Center(
              child: Text(
                'All',
                style: TextStyle(color: Colors.white, fontSize: 11),
              ),
            ),
          ),
          SizedBox(
            width: 15,
          ),
          Container(
            height: 22,
            width: 60,
            decoration: BoxDecoration(
                color: Colors.deepPurple,
                borderRadius: BorderRadius.circular(5)),
            child: Center(
              child: Text(
                'Popular',
                style: TextStyle(color: Colors.white, fontSize: 11),
              ),
            ),
          ),
          SizedBox(
            width: 15,
          ),
          Container(
            height: 22,
            width: 60,
            decoration: BoxDecoration(
                color: Colors.deepPurple,
                borderRadius: BorderRadius.circular(5)),
            child: Center(
              child: Text(
                'Newest',
                style: TextStyle(color: Colors.white, fontSize: 11),
              ),
            ),
          )
        ],
      )
    ],
  );
}
