import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_3_22_first_bank___digital_banking/presentation/setting_security_page/models/setting_security_model.dart';
part 'setting_security_event.dart';
part 'setting_security_state.dart';

/// A bloc that manages the state of a SettingSecurity according to the event that is dispatched to it.
class SettingSecurityBloc
    extends Bloc<SettingSecurityEvent, SettingSecurityState> {
  SettingSecurityBloc(SettingSecurityState initialState) : super(initialState) {
    on<SettingSecurityInitialEvent>(_onInitialize);
    on<ChangeSwitchEvent>(_changeSwitch);
  }

  _changeSwitch(
    ChangeSwitchEvent event,
    Emitter<SettingSecurityState> emit,
  ) {
    emit(state.copyWith(
      isSelectedSwitch: event.value,
    ));
  }

  _onInitialize(
    SettingSecurityInitialEvent event,
    Emitter<SettingSecurityState> emit,
  ) async {
    emit(state.copyWith(
      passwordController: TextEditingController(),
      newpasswordController: TextEditingController(),
      isSelectedSwitch: false,
    ));
  }
}
