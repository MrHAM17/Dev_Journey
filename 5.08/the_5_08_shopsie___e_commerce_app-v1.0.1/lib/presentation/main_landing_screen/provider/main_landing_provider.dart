import 'package:flutter/material.dart';
import 'package:the_5_08_shopsie___e_commerce_app/core/app_export.dart';
import 'package:the_5_08_shopsie___e_commerce_app/presentation/main_landing_screen/models/main_landing_model.dart';
import '../models/frame_item_model.dart';
import '../models/thirtytwo_item_model.dart';
import '../models/mainlanding_item_model.dart';
import '../models/price_item_model.dart';

/// A provider class for the MainLandingScreen.
///
/// This provider manages the state of the MainLandingScreen, including the
/// current mainLandingModelObj

// ignore_for_file: must_be_immutable
class MainLandingProvider extends ChangeNotifier {
  TextEditingController emailController = TextEditingController();

  MainLandingModel mainLandingModelObj = MainLandingModel();

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
  }

  onSelected(dynamic value) {
    for (var element in mainLandingModelObj.dropdownItemList) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    notifyListeners();
  }

  onSelected1(dynamic value) {
    for (var element in mainLandingModelObj.dropdownItemList1) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    notifyListeners();
  }

  onSelected2(dynamic value) {
    for (var element in mainLandingModelObj.dropdownItemList2) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    notifyListeners();
  }
}
