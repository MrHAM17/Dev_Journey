import 'package:flutter/material.dart';
import 'package:the_5_19_banksy___digital_banking/core/app_export.dart';
import 'package:the_5_19_banksy___digital_banking/presentation/menu_draweritem/models/menu_model.dart';

/// A provider class for the MenuDraweritem.
///
/// This provider manages the state of the MenuDraweritem, including the
/// current menuModelObj

// ignore_for_file: must_be_immutable
class MenuProvider extends ChangeNotifier {
  MenuModel menuModelObj = MenuModel();

  @override
  void dispose() {
    super.dispose();
  }
}
