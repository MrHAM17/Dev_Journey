import 'package:flutter/material.dart';
import 'package:the_5_17_housit___buyrentsell_property/core/app_export.dart';
import 'package:the_5_17_housit___buyrentsell_property/presentation/edit_success_bottomsheet/models/edit_success_model.dart';

/// A provider class for the EditSuccessBottomsheet.
///
/// This provider manages the state of the EditSuccessBottomsheet, including the
/// current editSuccessModelObj
class EditSuccessProvider extends ChangeNotifier {
  EditSuccessModel editSuccessModelObj = EditSuccessModel();

  @override
  void dispose() {
    super.dispose();
  }
}
