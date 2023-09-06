import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ulearning_app/common/routes/pages.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      // providers: AppBlocProvider.allBlocProviders,
      providers: AppPages.allBlocProviders(context),
      child: ScreenUtilInit(
        builder: (context, child) {
          return const MaterialApp(
            debugShowCheckedModeBanner: false,
            //home: const WelcomeScreen(),
            onGenerateRoute: AppPages.generateRouteSetting,
            // routes: {
            //   "/sign_in": (context) => const SignInScreen(),
            //   "/register": (context) => const RegisterScreen(),
            //   "/application": (context) => const ApplicationPage()
            // },
          );
        },
      ),
    );
  }
}
