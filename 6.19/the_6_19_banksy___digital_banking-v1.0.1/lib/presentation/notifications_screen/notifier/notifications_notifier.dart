import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_6_19_banksy___digital_banking/presentation/notifications_screen/models/notifications_model.dart';
part 'notifications_state.dart';

final notificationsNotifier =
    StateNotifierProvider<NotificationsNotifier, NotificationsState>(
  (ref) => NotificationsNotifier(NotificationsState(
    isSelectedSwitch: false,
    isSelectedSwitch1: false,
    isSelectedSwitch2: false,
    isSelectedSwitch3: false,
    isSelectedSwitch4: false,
    isSelectedSwitch5: false,
    isSelectedSwitch6: false,
    isSelectedSwitch7: false,
    notificationsModelObj: NotificationsModel(),
  )),
);

/// A notifier that manages the state of a Notifications according to the event that is dispatched to it.
class NotificationsNotifier extends StateNotifier<NotificationsState> {
  NotificationsNotifier(NotificationsState state) : super(state) {}

  void changeSwitchBox1(bool value) {
    state = state.copyWith(isSelectedSwitch: value);
  }

  void changeSwitchBox2(bool value) {
    state = state.copyWith(isSelectedSwitch1: value);
  }

  void changeSwitchBox3(bool value) {
    state = state.copyWith(isSelectedSwitch2: value);
  }

  void changeSwitchBox4(bool value) {
    state = state.copyWith(isSelectedSwitch3: value);
  }

  void changeSwitchBox5(bool value) {
    state = state.copyWith(isSelectedSwitch4: value);
  }

  void changeSwitchBox6(bool value) {
    state = state.copyWith(isSelectedSwitch5: value);
  }

  void changeSwitchBox7(bool value) {
    state = state.copyWith(isSelectedSwitch6: value);
  }

  void changeSwitchBox8(bool value) {
    state = state.copyWith(isSelectedSwitch7: value);
  }
}
