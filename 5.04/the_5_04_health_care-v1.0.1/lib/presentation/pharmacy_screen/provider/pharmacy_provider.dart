import 'package:flutter/material.dart';
import 'package:the_5_04_health_care/core/app_export.dart';
import 'package:the_5_04_health_care/presentation/pharmacy_screen/models/pharmacy_model.dart';
import '../models/drugs_item_model.dart';
import '../models/drugs1_item_model.dart';

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
