import 'package:flutter/material.dart';
import 'package:the_5_12_street_style___e_commerce_app/core/app_export.dart';
import 'package:the_5_12_street_style___e_commerce_app/presentation/shop_screen/models/shop_model.dart';
import '../models/shop_item_model.dart';

/// A provider class for the ShopScreen.
///
/// This provider manages the state of the ShopScreen, including the
/// current shopModelObj

// ignore_for_file: must_be_immutable
class ShopProvider extends ChangeNotifier {
  ShopModel shopModelObj = ShopModel();

  @override
  void dispose() {
    super.dispose();
  }
}
