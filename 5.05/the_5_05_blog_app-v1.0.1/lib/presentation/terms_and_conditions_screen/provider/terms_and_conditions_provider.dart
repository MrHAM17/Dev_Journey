import 'package:flutter/material.dart';
import 'package:the_5_05_blog_app/core/app_export.dart';
import 'package:the_5_05_blog_app/presentation/terms_and_conditions_screen/models/terms_and_conditions_model.dart';

/// A provider class for the TermsAndConditionsScreen.
///
/// This provider manages the state of the TermsAndConditionsScreen, including the
/// current termsAndConditionsModelObj
class TermsAndConditionsProvider extends ChangeNotifier {
  TermsAndConditionsModel termsAndConditionsModelObj =
      TermsAndConditionsModel();

  @override
  void dispose() {
    super.dispose();
  }
}
