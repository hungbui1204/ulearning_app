import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ulearning_app/page/register/bloc/register_events.dart';
import 'package:ulearning_app/page/register/bloc/register_states.dart';

class RegisterBlocs extends Bloc<RegisterEvents, RegisterStates> {
  RegisterBlocs() : super(const InitRegisterState()) {
    on<UsernameEvent>(_usernameEvent);
    on<EmailEvent>(_emailEvent);
    on<PasswordEvent>(_passwordEvent);
    on<RePasswordEvent>(_rePasswordEvent);
  }
  void _usernameEvent(UsernameEvent event, Emitter<RegisterStates> emit) {
    print(event.username);
    emit(state.copyWith(username: event.username));
  }

  void _emailEvent(EmailEvent event, Emitter<RegisterStates> emit) {
    print(event.email);
    emit(state.copyWith(email: event.email));
  }

  void _passwordEvent(PasswordEvent event, Emitter<RegisterStates> emit) {
    print(event.password);
    emit(state.copyWith(password: event.password));
  }

  void _rePasswordEvent(RePasswordEvent event, Emitter<RegisterStates> emit) {
    print(event.rePassword);
    emit(state.copyWith(rePassword: event.rePassword));
  }
}
