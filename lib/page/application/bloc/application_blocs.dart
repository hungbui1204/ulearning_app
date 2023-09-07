import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ulearning_app/page/application/bloc/application_events.dart';
import 'package:ulearning_app/page/application/bloc/application_states.dart';

class ApplicationBlocs extends Bloc<ApplicationEvents, ApplicationStates> {
  ApplicationBlocs() : super(const InitApplicationState()) {
    on<TriggerApplicationEvent>((event, emit) {
      emit(ApplicationStates(index: event.index));
    });
  }
}
