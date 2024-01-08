import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_6_06_helthio___telehealth/presentation/reset_password_phone_page/models/reset_password_phone_model.dart';
part 'reset_password_phone_state.dart';

final resetPasswordPhoneNotifier =
    StateNotifierProvider<ResetPasswordPhoneNotifier, ResetPasswordPhoneState>(
        (ref) => ResetPasswordPhoneNotifier(ResetPasswordPhoneState(
            mobileNoController: TextEditingController(),
            resetPasswordPhoneModelObj: ResetPasswordPhoneModel())));

/// A notifier that manages the state of a ResetPasswordPhone according to the event that is dispatched to it.
class ResetPasswordPhoneNotifier
    extends StateNotifier<ResetPasswordPhoneState> {
  ResetPasswordPhoneNotifier(ResetPasswordPhoneState state) : super(state);
}
