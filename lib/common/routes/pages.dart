import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ulearning_app/common/routes/names.dart';
import 'package:ulearning_app/global.dart';
import 'package:ulearning_app/page/application/application_page.dart';
import 'package:ulearning_app/page/application/bloc/application_blocs.dart';
import 'package:ulearning_app/page/home/bloc/home_blocs.dart';
import 'package:ulearning_app/page/home/home_screen.dart';
import 'package:ulearning_app/page/profile/profile_screen.dart';
import 'package:ulearning_app/page/register/bloc/register_blocs.dart';
import 'package:ulearning_app/page/register/register.dart';
import 'package:ulearning_app/page/setting/bloc/settings_blocs.dart';
import 'package:ulearning_app/page/setting/setting_screen.dart';
import 'package:ulearning_app/page/sign_in/bloc/sign_in_blocs.dart';
import 'package:ulearning_app/page/sign_in/sign_in.dart';
import 'package:ulearning_app/page/welcome/bloc/welcome_blocs.dart';
import 'package:ulearning_app/page/welcome/welcome.dart';

class AppPages {
  static List<PageEntity> pages = [
    PageEntity(
        route: AppRoutes.INITIAL,
        page: const WelcomeScreen(),
        bloc: BlocProvider(create: (_) => WelcomeBlocs())),
    PageEntity(
        route: AppRoutes.APPLICATION,
        page: const ApplicationPage(),
        bloc: BlocProvider(create: (_) => ApplicationBlocs())),
    PageEntity(
        route: AppRoutes.SIGN_IN,
        page: const SignInScreen(),
        bloc: BlocProvider(create: (_) => SignInBlocs())),
    PageEntity(
        route: AppRoutes.REGISTER,
        page: const RegisterScreen(),
        bloc: BlocProvider(create: (_) => RegisterBlocs())),
    PageEntity(
        route: AppRoutes.HOME_PAGE,
        page: const HomeScreen(),
        bloc: BlocProvider(create: (_) => HomeBlocs())),
    PageEntity(
        route: AppRoutes.PROFILE_PAGE,
        page: const ProfileScreen(),
        bloc: BlocProvider(
          create: (_) => HomeBlocs(),
        )),
    PageEntity(
        route: AppRoutes.SETTINGS_PAGE,
        page: const SettingsScreen(),
        bloc: BlocProvider(
          create: (_) => SettingsBlocs(),
        ))
  ];

  static List<BlocProvider> allBlocProviders(BuildContext context) {
    List<BlocProvider> blocProviders = [];
    for (var bloc in pages) {
      blocProviders.add(bloc.bloc);
    }
    return blocProviders;
  }

  static MaterialPageRoute generateRouteSetting(RouteSettings settings) {
    if (settings.name != null) {
      var result = pages.where((element) => element.route == settings.name);
      if (result.isNotEmpty) {
        bool deviceFirstOpen = Global.storageService.getDeviceFirstOpen();
        //check if the welcome page was done last restart
        if (result.first.route == AppRoutes.INITIAL && deviceFirstOpen) {
          bool isLoggedIn = Global.storageService.getIsLoggedIn();
          if (isLoggedIn) {
            return MaterialPageRoute(
                builder: (_) => const ApplicationPage(), settings: settings);
          }
          return MaterialPageRoute(
              builder: (_) => const SignInScreen(), settings: settings);
        }
        return MaterialPageRoute(
            builder: (_) => result.first.page, settings: settings);
      }
    }
    return MaterialPageRoute(
        builder: (_) => const SignInScreen(), settings: settings);
  }
}

class PageEntity {
  String route;
  Widget page;
  dynamic bloc;
  PageEntity({required this.route, required this.page, this.bloc});
}
