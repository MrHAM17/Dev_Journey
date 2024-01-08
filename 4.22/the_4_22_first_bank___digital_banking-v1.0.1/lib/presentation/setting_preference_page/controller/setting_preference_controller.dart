import 'package:the_4_22_first_bank___digital_banking/core/app_export.dart';
import 'package:the_4_22_first_bank___digital_banking/presentation/setting_preference_page/models/setting_preference_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the SettingPreferencePage.
///
/// This class manages the state of the SettingPreferencePage, including the
/// current settingPreferenceModelObj
class SettingPreferenceController extends GetxController {
  SettingPreferenceController(this.settingPreferenceModelObj);

  TextEditingController currencyvalueController = TextEditingController();

  TextEditingController timeController = TextEditingController();

  Rx<SettingPreferenceModel> settingPreferenceModelObj;

  Rx<bool> isSelectedSwitch = false.obs;

  Rx<bool> isSelectedSwitch1 = false.obs;

  Rx<bool> isSelectedSwitch2 = false.obs;

  @override
  void onClose() {
    super.onClose();
    currencyvalueController.dispose();
    timeController.dispose();
  }
}
