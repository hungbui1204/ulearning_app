import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ulearning_app/page/home/bloc/home_blocs.dart';
import 'package:ulearning_app/page/home/bloc/home_states.dart';
import 'package:ulearning_app/page/home/widgets/widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    List<String> gridImg = [
      'assets/images/grid1.jpg',
      'assets/images/grid2.jpg',
      'assets/images/grid3.jpg',
      'assets/images/grid4.jpg'
    ];
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: buildHomeAppBar(context),
        drawer: buildHomeDrawer(),
        body: BlocBuilder<HomeBlocs, HomeStates>(builder: (context, state) {
          return SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Text(
                      'Hello,',
                      style: TextStyle(
                          fontSize: 24,
                          color: Colors.grey.shade400,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  const Text(
                    'hungthe4869',
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: 40,
                        width: screenWidth * 0.75,
                        child: TextField(
                          onChanged: (value) {},
                          obscureText: false,
                          cursorColor: Colors.black,
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.zero,
                              hintText: 'Search your course',
                              hintStyle: TextStyle(
                                  fontSize: 14, color: Colors.grey.shade400),
                              prefixIcon: Padding(
                                padding: const EdgeInsets.all(12),
                                child: Image.asset(
                                  'assets/icons/search.png',
                                ),
                              ),
                              focusedBorder: const OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(12))),
                              border: const OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(12)))),
                        ),
                      ),
                      SizedBox(
                          height: 40,
                          width: 40,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10))),
                                  backgroundColor: Colors.deepPurple,
                                  padding: const EdgeInsets.all(8)),
                              onPressed: () {},
                              child: SizedBox(
                                  child: Image.asset(
                                'assets/icons/filter.png',
                                color: Colors.white,
                              )))),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  sliderView(context, state),
                  const SizedBox(
                    height: 15,
                  ),
                  menuView(),
                  const SizedBox(
                    height: 20,
                  ),
                  GridView.builder(
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              childAspectRatio: 1.4,
                              mainAxisSpacing: 15,
                              crossAxisSpacing: 15,
                              crossAxisCount: 2),
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        return Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(gridImg[index]),
                                  fit: BoxFit.fill,
                                  colorFilter: ColorFilter.mode(
                                      Colors.black.withOpacity(0.5),
                                      BlendMode.darken)),
                              borderRadius: BorderRadius.circular(10)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Best course for IT',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'Flutter course',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 13,
                                      color: Colors.white.withOpacity(0.7)),
                                )
                              ],
                            ),
                          ),
                        );
                      })
                ],
              ),
            ),
          );
        }));
  }
}
