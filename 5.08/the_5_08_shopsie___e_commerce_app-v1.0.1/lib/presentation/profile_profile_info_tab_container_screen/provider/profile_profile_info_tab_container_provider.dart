import 'package:flutter/material.dart';
import 'package:the_5_08_shopsie___e_commerce_app/core/app_export.dart';
import 'package:the_5_08_shopsie___e_commerce_app/presentation/profile_profile_info_tab_container_screen/models/profile_profile_info_tab_container_model.dart';

/// A provider class for the ProfileProfileInfoTabContainerScreen.
///
/// This provider manages the state of the ProfileProfileInfoTabContainerScreen, including the
/// current profileProfileInfoTabContainerModelObj

// ignore_for_file: must_be_immutable
class ProfileProfileInfoTabContainerProvider extends ChangeNotifier {
  ProfileProfileInfoTabContainerModel profileProfileInfoTabContainerModelObj =
      ProfileProfileInfoTabContainerModel();

  @override
  void dispose() {
    super.dispose();
  }
}
