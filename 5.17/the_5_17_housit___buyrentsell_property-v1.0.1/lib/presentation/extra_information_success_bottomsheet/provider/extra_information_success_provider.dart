import 'package:flutter/material.dart';
import 'package:the_5_17_housit___buyrentsell_property/core/app_export.dart';
import 'package:the_5_17_housit___buyrentsell_property/presentation/extra_information_success_bottomsheet/models/extra_information_success_model.dart';

/// A provider class for the ExtraInformationSuccessBottomsheet.
///
/// This provider manages the state of the ExtraInformationSuccessBottomsheet, including the
/// current extraInformationSuccessModelObj
class ExtraInformationSuccessProvider extends ChangeNotifier {
  ExtraInformationSuccessModel extraInformationSuccessModelObj =
      ExtraInformationSuccessModel();

  @override
  void dispose() {
    super.dispose();
  }
}
