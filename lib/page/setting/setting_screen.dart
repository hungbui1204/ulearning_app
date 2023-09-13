import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ulearning_app/page/application/bloc/application_blocs.dart';
import 'package:ulearning_app/page/application/bloc/application_events.dart';
import 'package:ulearning_app/page/setting/bloc/settings_blocs.dart';
import 'package:ulearning_app/page/setting/bloc/settings_state.dart';
import 'package:ulearning_app/page/setting/widget/settings_widgets.dart';

import '../../common/routes/names.dart';
import '../../common/value/constants.dart';
import '../../global.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    void logOut() {
      BlocProvider.of<ApplicationBlocs>(context)
          .add(const TriggerApplicationEvent(0));
      Global.storageService.remove(AppConstants.STORAGE_USER_TOKEN_KEY);
      print('log out successful');
      Navigator.of(context)
          .pushNamedAndRemoveUntil(AppRoutes.SIGN_IN, (route) => false);
    }

    print('go to sign in page');

    return BlocBuilder<SettingsBlocs, SettingsStates>(
        builder: (context, state) {
      return Scaffold(
        backgroundColor: Colors.white,
        appBar: buildSettingsAppBar(context),
        body: Column(
          children: [
            logOutButton(context, logOut),
          ],
        ),
      );
    });
  }
}
