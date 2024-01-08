import 'package:flutter/material.dart';
import 'package:the_5_09_social_dashboards_ui_kit/core/app_export.dart';
import 'package:the_5_09_social_dashboards_ui_kit/presentation/settings_screen/models/settings_model.dart';

/// A provider class for the SettingsScreen.
///
/// This provider manages the state of the SettingsScreen, including the
/// current settingsModelObj

// ignore_for_file: must_be_immutable
class SettingsProvider extends ChangeNotifier {
  SettingsModel settingsModelObj = SettingsModel();

  @override
  void dispose() {
    super.dispose();
  }
}
