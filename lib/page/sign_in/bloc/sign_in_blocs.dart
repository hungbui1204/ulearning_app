import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ulearning_app/page/sign_in/bloc/sign_in_events.dart';
import 'package:ulearning_app/page/sign_in/bloc/sign_in_states.dart';

class SignInBlocs extends Bloc<SignInEvent, SignInStates> {
  SignInBlocs() : super(const SignInStates()) {
    on<EmailEvent>(_emailEvent);
    on<PasswordEvent>(_passwordEvent);
  }
  void _emailEvent(EmailEvent event, Emitter<SignInStates> emit) {
    print('my email is ${event.email}');
    emit(state.copyWith(email: event.email));
  }

  void _passwordEvent(PasswordEvent event, Emitter<SignInStates> emit) {
    print('my password is ${event.password}');
    emit(state.copyWith(password: event.password));
  }
}
