import 'package:flutter/material.dart';
import 'package:the_5_17_housit___buyrentsell_property/core/app_export.dart';
import 'package:the_5_17_housit___buyrentsell_property/presentation/extra_information_error_bottomsheet/models/extra_information_error_model.dart';

/// A provider class for the ExtraInformationErrorBottomsheet.
///
/// This provider manages the state of the ExtraInformationErrorBottomsheet, including the
/// current extraInformationErrorModelObj
class ExtraInformationErrorProvider extends ChangeNotifier {
  ExtraInformationErrorModel extraInformationErrorModelObj =
      ExtraInformationErrorModel();

  @override
  void dispose() {
    super.dispose();
  }
}
