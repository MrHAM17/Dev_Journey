import 'package:flutter/material.dart';
import 'package:the_5_08_shopsie___e_commerce_app/core/app_export.dart';
import 'package:the_5_08_shopsie___e_commerce_app/presentation/profile_profile_info_page/models/profile_profile_info_model.dart';

/// A provider class for the ProfileProfileInfoPage.
///
/// This provider manages the state of the ProfileProfileInfoPage, including the
/// current profileProfileInfoModelObj
class ProfileProfileInfoProvider extends ChangeNotifier {
  TextEditingController firstNameController = TextEditingController();

  TextEditingController lastNameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  ProfileProfileInfoModel profileProfileInfoModelObj =
      ProfileProfileInfoModel();

  @override
  void dispose() {
    super.dispose();
    firstNameController.dispose();
    lastNameController.dispose();
    emailController.dispose();
  }
}
