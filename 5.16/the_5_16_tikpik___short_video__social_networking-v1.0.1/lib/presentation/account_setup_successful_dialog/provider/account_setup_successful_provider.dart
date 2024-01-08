import 'package:flutter/material.dart';
import 'package:the_5_16_tikpik___short_video__social_networking/core/app_export.dart';
import 'package:the_5_16_tikpik___short_video__social_networking/presentation/account_setup_successful_dialog/models/account_setup_successful_model.dart';

/// A provider class for the AccountSetupSuccessfulDialog.
///
/// This provider manages the state of the AccountSetupSuccessfulDialog, including the
/// current accountSetupSuccessfulModelObj
class AccountSetupSuccessfulProvider extends ChangeNotifier {
  AccountSetupSuccessfulModel accountSetupSuccessfulModelObj =
      AccountSetupSuccessfulModel();

  @override
  void dispose() {
    super.dispose();
  }
}
