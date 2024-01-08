import 'package:flutter/material.dart';
import 'package:the_5_16_tikpik___short_video__social_networking/core/app_export.dart';
import 'package:the_5_16_tikpik___short_video__social_networking/presentation/reset_password_successful_dialog/models/reset_password_successful_model.dart';

/// A provider class for the ResetPasswordSuccessfulDialog.
///
/// This provider manages the state of the ResetPasswordSuccessfulDialog, including the
/// current resetPasswordSuccessfulModelObj
class ResetPasswordSuccessfulProvider extends ChangeNotifier {
  ResetPasswordSuccessfulModel resetPasswordSuccessfulModelObj =
      ResetPasswordSuccessfulModel();

  @override
  void dispose() {
    super.dispose();
  }
}
