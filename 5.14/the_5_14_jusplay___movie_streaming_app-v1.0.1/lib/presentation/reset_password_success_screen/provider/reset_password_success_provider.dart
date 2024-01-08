import 'package:flutter/material.dart';
import 'package:the_5_14_jusplay___movie_streaming_app/core/app_export.dart';
import 'package:the_5_14_jusplay___movie_streaming_app/presentation/reset_password_success_screen/models/reset_password_success_model.dart';

/// A provider class for the ResetPasswordSuccessScreen.
///
/// This provider manages the state of the ResetPasswordSuccessScreen, including the
/// current resetPasswordSuccessModelObj

// ignore_for_file: must_be_immutable
class ResetPasswordSuccessProvider extends ChangeNotifier {
  ResetPasswordSuccessModel resetPasswordSuccessModelObj =
      ResetPasswordSuccessModel();

  @override
  void dispose() {
    super.dispose();
  }
}
