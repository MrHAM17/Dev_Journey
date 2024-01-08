import 'package:flutter/material.dart';
import 'package:the_5_06_helthio___telehealth/core/app_export.dart';
import 'package:the_5_06_helthio___telehealth/presentation/pharmacy_screen/models/pharmacy_model.dart';
import '../models/popularproduct_item_model.dart';
import '../models/productonsale_item_model.dart';

/// A provider class for the PharmacyScreen.
///
/// This provider manages the state of the PharmacyScreen, including the
/// current pharmacyModelObj

// ignore_for_file: must_be_immutable
class PharmacyProvider extends ChangeNotifier {
  TextEditingController searchController = TextEditingController();

  PharmacyModel pharmacyModelObj = PharmacyModel();

  @override
  void dispose() {
    super.dispose();
    searchController.dispose();
  }
}
