import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_6_06_helthio___telehealth/presentation/reset_password_email_tab_container_screen/models/reset_password_email_tab_container_model.dart';
part 'reset_password_email_tab_container_state.dart';

final resetPasswordEmailTabContainerNotifier = StateNotifierProvider<
    ResetPasswordEmailTabContainerNotifier,
    ResetPasswordEmailTabContainerState>(
  (ref) => ResetPasswordEmailTabContainerNotifier(
      ResetPasswordEmailTabContainerState(
    resetPasswordEmailTabContainerModelObj:
        ResetPasswordEmailTabContainerModel(),
  )),
);

/// A notifier that manages the state of a ResetPasswordEmailTabContainer according to the event that is dispatched to it.
class ResetPasswordEmailTabContainerNotifier
    extends StateNotifier<ResetPasswordEmailTabContainerState> {
  ResetPasswordEmailTabContainerNotifier(
      ResetPasswordEmailTabContainerState state)
      : super(state) {}
}
