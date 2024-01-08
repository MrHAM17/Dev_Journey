import 'package:flutter/material.dart';
import 'package:the_5_15_safebank___mobile_banking_app/core/app_export.dart';
import 'package:the_5_15_safebank___mobile_banking_app/presentation/country_or_region_screen/models/country_or_region_model.dart';
import '../models/countryorregion_item_model.dart';

/// A provider class for the CountryOrRegionScreen.
///
/// This provider manages the state of the CountryOrRegionScreen, including the
/// current countryOrRegionModelObj

// ignore_for_file: must_be_immutable
class CountryOrRegionProvider extends ChangeNotifier {
  TextEditingController searchController = TextEditingController();

  CountryOrRegionModel countryOrRegionModelObj = CountryOrRegionModel();

  @override
  void dispose() {
    super.dispose();
    searchController.dispose();
  }
}
