import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ulearning_app/page/welcome/bloc/welcome_events.dart';
import 'package:ulearning_app/page/welcome/bloc/welcome_states.dart';

class WelcomeBlocs extends Bloc<WelcomeEvent, WelcomeStates> {
  WelcomeBlocs() : super(WelcomeInitState()) {
    on<WelcomeEvent>((event, emit) {
      emit(WelcomeStates(page: state.page));
    });
  }
}
