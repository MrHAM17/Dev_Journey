import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_3_22_first_bank___digital_banking/presentation/setting_preference_tab_container_screen/models/setting_preference_tab_container_model.dart';
part 'setting_preference_tab_container_event.dart';
part 'setting_preference_tab_container_state.dart';

/// A bloc that manages the state of a SettingPreferenceTabContainer according to the event that is dispatched to it.
class SettingPreferenceTabContainerBloc extends Bloc<
    SettingPreferenceTabContainerEvent, SettingPreferenceTabContainerState> {
  SettingPreferenceTabContainerBloc(
      SettingPreferenceTabContainerState initialState)
      : super(initialState) {
    on<SettingPreferenceTabContainerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SettingPreferenceTabContainerInitialEvent event,
    Emitter<SettingPreferenceTabContainerState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
    ));
  }
}
