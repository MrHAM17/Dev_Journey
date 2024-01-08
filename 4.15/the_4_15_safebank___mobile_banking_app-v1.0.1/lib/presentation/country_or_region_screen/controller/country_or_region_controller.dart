import 'package:the_4_15_safebank___mobile_banking_app/core/app_export.dart';
import 'package:the_4_15_safebank___mobile_banking_app/presentation/country_or_region_screen/models/country_or_region_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the CountryOrRegionScreen.
///
/// This class manages the state of the CountryOrRegionScreen, including the
/// current countryOrRegionModelObj
class CountryOrRegionController extends GetxController {
  TextEditingController searchController = TextEditingController();

  Rx<CountryOrRegionModel> countryOrRegionModelObj = CountryOrRegionModel().obs;

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
