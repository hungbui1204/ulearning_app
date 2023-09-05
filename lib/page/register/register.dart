import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ulearning_app/page/register/bloc/register_blocs.dart';
import 'package:ulearning_app/page/register/bloc/register_events.dart';
import 'package:ulearning_app/page/register/bloc/register_states.dart';
import 'package:ulearning_app/page/register/register_controller.dart';
import 'package:ulearning_app/page/sign_in/widgets/sign_in_widget.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegisterBlocs, RegisterStates>(
        builder: (context, state) {
      return Scaffold(
        backgroundColor: Colors.white,
        appBar: buildAppBar(appBarName: 'Sign Up'),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Center(
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: Text(
                    'Enter your detail below & free sign up',
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Username',
                      style: TextStyle(color: Colors.grey),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    customTextField(
                      func: (value) {
                        BlocProvider.of<RegisterBlocs>(context)
                            .add(UsernameEvent(value));
                      },
                      showText: true,
                      hintText: 'Enter your username',
                      prefixIcon: const Icon(
                        Icons.account_circle,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'Email',
                      style: TextStyle(color: Colors.grey),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    customTextField(
                      func: (value) {
                        BlocProvider.of<RegisterBlocs>(context)
                            .add(EmailEvent(value));
                      },
                      showText: true,
                      hintText: 'Enter your email address',
                      prefixIcon: const Icon(
                        Icons.account_circle,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'Password',
                      style: TextStyle(color: Colors.grey),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    customTextField(
                        func: (value) {
                          BlocProvider.of<RegisterBlocs>(context)
                              .add(PasswordEvent(value));
                        },
                        showText: false,
                        hintText: 'Enter your password',
                        prefixIcon: const Icon(
                          Icons.lock,
                          color: Colors.black,
                        )),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'Confirm Password',
                      style: TextStyle(color: Colors.grey),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    customTextField(
                        func: (value) {
                          BlocProvider.of<RegisterBlocs>(context)
                              .add(RePasswordEvent(value));
                        },
                        showText: false,
                        hintText: 'Enter your confirm password',
                        prefixIcon: const Icon(
                          Icons.lock,
                          color: Colors.black,
                        )),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'By creating an account, you have to agree with our term & condition',
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    logInButton(
                        buttonName: 'Sign Up',
                        func: () {
                          RegisterController(context).registerHandle();
                        })
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
