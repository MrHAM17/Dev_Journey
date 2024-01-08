import 'package:flutter/material.dart';
import 'package:the_5_03_todo/core/app_export.dart';
import 'package:the_5_03_todo/presentation/termsandconditions_screen/models/termsandconditions_model.dart';

/// A provider class for the TermsandconditionsScreen.
///
/// This provider manages the state of the TermsandconditionsScreen, including the
/// current termsandconditionsModelObj

// ignore_for_file: must_be_immutable
class TermsandconditionsProvider extends ChangeNotifier {
  TermsandconditionsModel termsandconditionsModelObj =
      TermsandconditionsModel();

  @override
  void dispose() {
    super.dispose();
  }
}
