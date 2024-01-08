import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_6_06_helthio___telehealth/presentation/reset_password_email_page/models/reset_password_email_model.dart';
part 'reset_password_email_state.dart';

final resetPasswordEmailNotifier =
    StateNotifierProvider<ResetPasswordEmailNotifier, ResetPasswordEmailState>(
        (ref) => ResetPasswordEmailNotifier(ResetPasswordEmailState(
            emailController: TextEditingController(),
            resetPasswordEmailModelObj: ResetPasswordEmailModel())));

/// A notifier that manages the state of a ResetPasswordEmail according to the event that is dispatched to it.
class ResetPasswordEmailNotifier
    extends StateNotifier<ResetPasswordEmailState> {
  ResetPasswordEmailNotifier(ResetPasswordEmailState state) : super(state);
}
