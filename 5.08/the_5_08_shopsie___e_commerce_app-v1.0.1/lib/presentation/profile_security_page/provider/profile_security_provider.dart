import 'package:flutter/material.dart';
import 'package:the_5_08_shopsie___e_commerce_app/core/app_export.dart';
import 'package:the_5_08_shopsie___e_commerce_app/presentation/profile_security_page/models/profile_security_model.dart';

/// A provider class for the ProfileSecurityPage.
///
/// This provider manages the state of the ProfileSecurityPage, including the
/// current profileSecurityModelObj
class ProfileSecurityProvider extends ChangeNotifier {
  TextEditingController passwordController = TextEditingController();

  TextEditingController newpasswordController = TextEditingController();

  ProfileSecurityModel profileSecurityModelObj = ProfileSecurityModel();

  @override
  void dispose() {
    super.dispose();
    passwordController.dispose();
    newpasswordController.dispose();
  }
}
