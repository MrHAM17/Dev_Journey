import 'package:flutter/material.dart';
import 'package:the_5_06_helthio___telehealth/core/app_export.dart';
import 'package:the_5_06_helthio___telehealth/presentation/my_cart_screen/models/my_cart_model.dart';
import '../models/durgs_item_model.dart';

/// A provider class for the MyCartScreen.
///
/// This provider manages the state of the MyCartScreen, including the
/// current myCartModelObj

// ignore_for_file: must_be_immutable
class MyCartProvider extends ChangeNotifier {
  MyCartModel myCartModelObj = MyCartModel();

  @override
  void dispose() {
    super.dispose();
  }
}
