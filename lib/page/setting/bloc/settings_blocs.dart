import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ulearning_app/page/setting/bloc/settings_events.dart';
import 'package:ulearning_app/page/setting/bloc/settings_state.dart';

class SettingsBlocs extends Bloc<SettingsEvents, SettingsStates> {
  SettingsBlocs() : super(const SettingsStates()) {}
}
