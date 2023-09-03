import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ulearning_app/common/widgets/flutter_toast.dart';
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
          print('email is empty');
          toastInfo(msg: 'You need to fill email address');
          return;
        } else {
          print('email is $email');
        }
        if (password.isEmpty) {
          //do something
          print('password is empty');
          toastInfo(msg: 'You need to fill password');
          return;
        }
        try {
          final credential = await FirebaseAuth.instance
              .signInWithEmailAndPassword(email: email, password: password);
          if (credential.user == null) {
            //do something
            print("user doesn't exist");
            toastInfo(msg: 'User does not exits');
            return;
          }
          if (!credential.user!.emailVerified) {
            //do something
            print('not verified');
            toastInfo(msg: 'You need to verified your email');
            return;
          }
          var user = credential.user;
          if (user != null) {
            //verified
            print('user exist');
          } else {
            //error
            print('no user');
            toastInfo(msg: 'No user / Not exist');
            return;
          }
        } on FirebaseAuthException catch (e) {
          if (e.code == 'user-not-found') {
            print('No user for this email');
            toastInfo(msg: 'No user for this email');
          } else if (e.code == 'wrong-password') {
            print('Wrong password provided for this user');
            toastInfo(msg: 'Wrong password provided for this user');
          } else if (e.code == 'invalid-email') {
            print('Your email format is wrong');
            toastInfo(msg: 'Your email format is wrong');
          }
        }
      }
    } catch (e) {
      print(e.toString());
    }
  }
}
