import 'package:flutter/material.dart';
import 'package:the_5_17_housit___buyrentsell_property/core/app_export.dart';
import 'package:the_5_17_housit___buyrentsell_property/presentation/delete_confirmation_bottomsheet/models/delete_confirmation_model.dart';

/// A provider class for the DeleteConfirmationBottomsheet.
///
/// This provider manages the state of the DeleteConfirmationBottomsheet, including the
/// current deleteConfirmationModelObj
class DeleteConfirmationProvider extends ChangeNotifier {
  DeleteConfirmationModel deleteConfirmationModelObj =
      DeleteConfirmationModel();

  @override
  void dispose() {
    super.dispose();
  }
}
