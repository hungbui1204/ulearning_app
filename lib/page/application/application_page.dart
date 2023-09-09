import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ulearning_app/page/application/application_widgets.dart';
import 'package:ulearning_app/page/application/bloc/application_blocs.dart';
import 'package:ulearning_app/page/application/bloc/application_events.dart';
import 'package:ulearning_app/page/application/bloc/application_states.dart';

class ApplicationPage extends StatefulWidget {
  const ApplicationPage({Key? key}) : super(key: key);

  @override
  State<ApplicationPage> createState() => _ApplicationPageState();
}

class _ApplicationPageState extends State<ApplicationPage> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ApplicationBlocs, ApplicationStates>(
        builder: (context, state) {
      return Scaffold(
        body: buildPage(state.index),
        bottomNavigationBar: Container(
          height: 70,
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20)),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.withOpacity(0.1),
                    spreadRadius: 1,
                    blurRadius: 1)
              ]),
          child: BottomNavigationBar(
            elevation: 0,
            type: BottomNavigationBarType.fixed,
            currentIndex: state.index,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            selectedItemColor: Colors.deepPurple,
            onTap: (value) {
              BlocProvider.of<ApplicationBlocs>(context)
                  .add(TriggerApplicationEvent(value));
            },
            items: bottomNavItems,
          ),
        ),
      );
    });
  }
}
