import 'package:flutter/material.dart';
import 'package:the_5_17_housit___buyrentsell_property/core/app_export.dart';
import 'package:the_5_17_housit___buyrentsell_property/presentation/add_review_success_bottomsheet/models/add_review_success_model.dart';

/// A provider class for the AddReviewSuccessBottomsheet.
///
/// This provider manages the state of the AddReviewSuccessBottomsheet, including the
/// current addReviewSuccessModelObj
class AddReviewSuccessProvider extends ChangeNotifier {
  AddReviewSuccessModel addReviewSuccessModelObj = AddReviewSuccessModel();

  @override
  void dispose() {
    super.dispose();
  }
}
