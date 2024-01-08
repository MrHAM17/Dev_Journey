import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_3_22_first_bank___digital_banking/presentation/setting_preference_page/models/setting_preference_model.dart';
part 'setting_preference_event.dart';
part 'setting_preference_state.dart';

/// A bloc that manages the state of a SettingPreference according to the event that is dispatched to it.
class SettingPreferenceBloc
    extends Bloc<SettingPreferenceEvent, SettingPreferenceState> {
  SettingPreferenceBloc(SettingPreferenceState initialState)
      : super(initialState) {
    on<SettingPreferenceInitialEvent>(_onInitialize);
    on<ChangeSwitchEvent>(_changeSwitch);
    on<ChangeSwitch1Event>(_changeSwitch1);
    on<ChangeSwitch2Event>(_changeSwitch2);
  }

  _changeSwitch(
    ChangeSwitchEvent event,
    Emitter<SettingPreferenceState> emit,
  ) {
    emit(state.copyWith(
      isSelectedSwitch: event.value,
    ));
  }

  _changeSwitch1(
    ChangeSwitch1Event event,
    Emitter<SettingPreferenceState> emit,
  ) {
    emit(state.copyWith(
      isSelectedSwitch1: event.value,
    ));
  }

  _changeSwitch2(
    ChangeSwitch2Event event,
    Emitter<SettingPreferenceState> emit,
  ) {
    emit(state.copyWith(
      isSelectedSwitch2: event.value,
    ));
  }

  _onInitialize(
    SettingPreferenceInitialEvent event,
    Emitter<SettingPreferenceState> emit,
  ) async {
    emit(state.copyWith(
      classicController: TextEditingController(),
      timeController: TextEditingController(),
      isSelectedSwitch: false,
      isSelectedSwitch1: false,
      isSelectedSwitch2: false,
    ));
  }
}
