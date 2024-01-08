import '../../../core/app_export.dart';

/// This class is used in the [countryorregion_item_widget] screen.
class CountryorregionItemModel {
  CountryorregionItemModel({
    this.unitedKingdom,
    this.unitedKingdom1,
    this.id,
  }) {
    unitedKingdom = unitedKingdom ?? Rx(ImageConstant.imgComponent2);
    unitedKingdom1 = unitedKingdom1 ?? Rx("United Kingdom");
    id = id ?? Rx("");
  }

  Rx<String>? unitedKingdom;

  Rx<String>? unitedKingdom1;

  Rx<String>? id;
}
