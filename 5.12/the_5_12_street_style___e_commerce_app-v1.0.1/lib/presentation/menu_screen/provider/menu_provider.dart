import 'package:flutter/material.dart';
import 'package:the_5_12_street_style___e_commerce_app/core/app_export.dart';
import 'package:the_5_12_street_style___e_commerce_app/presentation/menu_screen/models/menu_model.dart';

/// A provider class for the MenuScreen.
///
/// This provider manages the state of the MenuScreen, including the
/// current menuModelObj

// ignore_for_file: must_be_immutable
class MenuProvider extends ChangeNotifier {
  MenuModel menuModelObj = MenuModel();

  @override
  void dispose() {
    super.dispose();
  }
}
