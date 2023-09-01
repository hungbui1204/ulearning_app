import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ulearning_app/page/welcome/bloc/welcome_blocs.dart';
import 'package:ulearning_app/page/welcome/bloc/welcome_events.dart';
import 'package:ulearning_app/page/welcome/bloc/welcome_states.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  PageController _pageController = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body:
            BlocBuilder<WelcomeBlocs, WelcomeStates>(builder: (context, state) {
          return Container(
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                PageView(
                  controller: _pageController,
                  onPageChanged: (index) {
                    state.page = index;
                    BlocProvider.of<WelcomeBlocs>(context).add(WelcomeEvent());
                  },
                  children: [
                    _page(
                        1,
                        context,
                        'assets/images/reading_book.jpg',
                        'First See Learning',
                        'Forget about a for of paper all knowledge in one learning',
                        'Next'),
                    _page(
                        2,
                        context,
                        'assets/images/computer_learning.jpg',
                        'Connect With Everyone',
                        "Always keep in touch with your tutor & friends. Let's get connected",
                        'Next'),
                    _page(
                        3,
                        context,
                        'assets/images/online_study.jpg',
                        'Always Fascinated Learning',
                        "Anywhere, anytime. The time is at your discretion so study whenever you want",
                        'Get Started'),
                  ],
                ),
                Positioned(
                    bottom: 100,
                    child: DotsIndicator(
                      position: state.page,
                      dotsCount: 3,
                      mainAxisAlignment: MainAxisAlignment.center,
                      decorator: DotsDecorator(
                          color: Colors.grey,
                          activeColor: Colors.lightBlue,
                          size: const Size.square(8),
                          activeSize: const Size(20, 8),
                          activeShape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5))),
                    ))
              ],
            ),
          );
        }));
  }

  Widget _page(int index, BuildContext context, String imagePath, String title,
      String subTitle, String buttonText) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 100),
          child: SizedBox(
            height: 260,
            width: 350,
            child: Image.asset(
              imagePath,
              fit: BoxFit.fill,
            ),
          ),
        ),
        Text(
          title,
          style: const TextStyle(fontSize: 22, color: Colors.black),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
          child: Text(
            subTitle,
            style: const TextStyle(fontSize: 14, color: Colors.grey),
          ),
        ),
        const SizedBox(
          height: 100,
        ),
        SizedBox(
          height: 50,
          width: 300,
          child: ElevatedButton(
              onPressed: () {
                if (index < 3) {
                  _pageController.animateToPage(index,
                      duration: const Duration(microseconds: 500),
                      curve: Curves.decelerate);
                } else {
                  Navigator.of(context)
                      .pushNamedAndRemoveUntil("/sign_in", (route) => false);
                }
              },
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15))),
              child: Text(
                buttonText,
                style: const TextStyle(fontSize: 16),
              )),
        )
      ],
    );
  }
}
