import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ulearning_app/page/home/bloc/home_events.dart';
import 'package:ulearning_app/page/home/bloc/home_states.dart';

class HomeBlocs extends Bloc<HomeEvent, HomeStates> {
  HomeBlocs() : super(const InitHomeState()) {
    on<SliderHomeEvent>((event, emit) {
      emit(HomeStates(index: event.index));
    });
  }
}
