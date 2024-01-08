import 'package:flutter/material.dart';
import 'package:the_5_22_first_bank___digital_banking/core/app_export.dart';
import 'package:the_5_22_first_bank___digital_banking/presentation/get_started_screen/models/get_started_model.dart';

/// A provider class for the GetStartedScreen.
///
/// This provider manages the state of the GetStartedScreen, including the
/// current getStartedModelObj

// ignore_for_file: must_be_immutable
class GetStartedProvider extends ChangeNotifier {
  GetStartedModel getStartedModelObj = GetStartedModel();

  @override
  void dispose() {
    super.dispose();
  }
}
