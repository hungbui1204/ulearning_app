import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ulearning_app/common/widgets/flutter_toast.dart';
import 'package:ulearning_app/page/register/bloc/register_blocs.dart';

class RegisterController {
  final BuildContext context;
  const RegisterController(this.context);
  Future<void> registerHandle() async {
    final state = BlocProvider.of<RegisterBlocs>(context).state;
    String username = state.username;
    String email = state.email;
    String password = state.password;
    String rePassword = state.rePassword;

    if (username.isEmpty) {
      print('Username can not be empty');
      toastInfo(msg: 'Username can not be empty');
      return;
    }
    if (email.isEmpty) {
      print('Email can not be empty');
      toastInfo(msg: 'Email can not be empty');
      return;
    }
    if (password.isEmpty) {
      print('Password can not be empty');
      toastInfo(msg: 'Password can not be empty');
      return;
    }
    if (rePassword.isEmpty) {
      print('Re-enter password can not be empty');
      toastInfo(msg: 'Re-enter password can not be empty');
      return;
    }

    try {
      final credential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);

      if (credential.user != null) {
        await credential.user?.sendEmailVerification();
        await credential.user?.updateDisplayName(username);
        toastInfo(
            msg: 'A register confirmation has been sent to your email'
                '. Please check your email and click on the link to active your account!');
        Navigator.of(context).pop();
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        toastInfo(msg: 'The password provided is too weak');
      } else if (e.code == 'email-already-in-use') {
        toastInfo(msg: 'The email is already in use');
      } else if (e.code == 'invalid-email') {
        toastInfo(msg: 'Wrong type email');
      }
    }
  }
}
