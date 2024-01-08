import 'package:flutter/material.dart';
import 'package:the_5_22_first_bank___digital_banking/core/app_export.dart';
import 'package:the_5_22_first_bank___digital_banking/presentation/setting_preference_tab_container_screen/models/setting_preference_tab_container_model.dart';

/// A provider class for the SettingPreferenceTabContainerScreen.
///
/// This provider manages the state of the SettingPreferenceTabContainerScreen, including the
/// current settingPreferenceTabContainerModelObj
class SettingPreferenceTabContainerProvider extends ChangeNotifier {
  TextEditingController searchController = TextEditingController();

  SettingPreferenceTabContainerModel settingPreferenceTabContainerModelObj =
      SettingPreferenceTabContainerModel();

  @override
  void dispose() {
    super.dispose();
    searchController.dispose();
  }
}
