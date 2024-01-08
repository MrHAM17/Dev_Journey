import 'package:flutter/material.dart';
import 'package:the_5_11_hired___job_search/core/app_export.dart';
import 'package:the_5_11_hired___job_search/presentation/confirmation_dialog/models/confirmation_model.dart';

/// A provider class for the ConfirmationDialog.
///
/// This provider manages the state of the ConfirmationDialog, including the
/// current confirmationModelObj

// ignore_for_file: must_be_immutable
class ConfirmationProvider extends ChangeNotifier {
  ConfirmationModel confirmationModelObj = ConfirmationModel();

  @override
  void dispose() {
    super.dispose();
  }
}
