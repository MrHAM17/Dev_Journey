import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/countryorregion_item_model.dart';
import 'package:the_6_15_safebank___mobile_banking_app/presentation/country_or_region_screen/models/country_or_region_model.dart';
part 'country_or_region_state.dart';

final countryOrRegionNotifier = StateNotifierProvider<
        CountryOrRegionNotifier, CountryOrRegionState>(
    (ref) => CountryOrRegionNotifier(CountryOrRegionState(
        searchController: TextEditingController(),
        countryOrRegionModelObj: CountryOrRegionModel(countryorregionItemList: [
          CountryorregionItemModel(
              unitedKingdom: ImageConstant.imgComponent2,
              unitedKingdom1: "United Kingdom"),
          CountryorregionItemModel(
              unitedKingdom: ImageConstant.imgComponent2,
              unitedKingdom1: "Germany"),
          CountryorregionItemModel(
              unitedKingdom: ImageConstant.imgComponent2,
              unitedKingdom1: "France"),
          CountryorregionItemModel(
              unitedKingdom: ImageConstant.imgUnitedKingdom,
              unitedKingdom1: "United States"),
          CountryorregionItemModel(
              unitedKingdom: ImageConstant.imgComponent2,
              unitedKingdom1: "Italy"),
          CountryorregionItemModel(
              unitedKingdom: ImageConstant.imgComponent2,
              unitedKingdom1: "Portugal"),
          CountryorregionItemModel(
              unitedKingdom: ImageConstant.imgComponent2,
              unitedKingdom1: "Brazil")
        ]))));

/// A notifier that manages the state of a CountryOrRegion according to the event that is dispatched to it.
class CountryOrRegionNotifier extends StateNotifier<CountryOrRegionState> {
  CountryOrRegionNotifier(CountryOrRegionState state) : super(state);
}
