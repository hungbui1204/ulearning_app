import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ulearning_app/page/sign_in/bloc/sign_in_blocs.dart';

class SignInController {
  final BuildContext context;
  const SignInController({required this.context});
  Future<void> handleSignIn(String type) async {
    try {
      if (type == 'email') {
        final state = BlocProvider.of<SignInBlocs>(context).state;
        String email = state.email;
        String password = state.password;
        if (email.isEmpty) {
          //do something
        }
        if (password.isEmpty) {
          //do something
        }
        try {
          final credential = await FirebaseAuth.instance
              .signInWithEmailAndPassword(email: email, password: password);
          if (credential.user == null) {
            //do something
          }
          if (!credential.user!.emailVerified) {
            //do something
          }
        } catch (e) {}
      }
    } catch (e) {}
  }
}
