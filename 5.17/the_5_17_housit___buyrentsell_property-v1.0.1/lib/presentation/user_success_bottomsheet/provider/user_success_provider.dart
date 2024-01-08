import 'package:flutter/material.dart';
import 'package:the_5_17_housit___buyrentsell_property/core/app_export.dart';
import 'package:the_5_17_housit___buyrentsell_property/presentation/user_success_bottomsheet/models/user_success_model.dart';

/// A provider class for the UserSuccessBottomsheet.
///
/// This provider manages the state of the UserSuccessBottomsheet, including the
/// current userSuccessModelObj
class UserSuccessProvider extends ChangeNotifier {
  UserSuccessModel userSuccessModelObj = UserSuccessModel();

  @override
  void dispose() {
    super.dispose();
  }
}
