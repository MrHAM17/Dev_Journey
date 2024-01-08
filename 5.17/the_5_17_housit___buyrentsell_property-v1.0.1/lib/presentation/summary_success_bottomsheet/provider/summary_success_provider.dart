import 'package:flutter/material.dart';
import 'package:the_5_17_housit___buyrentsell_property/core/app_export.dart';
import 'package:the_5_17_housit___buyrentsell_property/presentation/summary_success_bottomsheet/models/summary_success_model.dart';

/// A provider class for the SummarySuccessBottomsheet.
///
/// This provider manages the state of the SummarySuccessBottomsheet, including the
/// current summarySuccessModelObj
class SummarySuccessProvider extends ChangeNotifier {
  SummarySuccessModel summarySuccessModelObj = SummarySuccessModel();

  @override
  void dispose() {
    super.dispose();
  }
}
