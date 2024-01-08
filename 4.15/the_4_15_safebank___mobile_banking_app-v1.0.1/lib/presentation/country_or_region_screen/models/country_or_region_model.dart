import '../../../core/app_export.dart';
import 'countryorregion_item_model.dart';

/// This class defines the variables used in the [country_or_region_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class CountryOrRegionModel {
  Rx<List<CountryorregionItemModel>> countryorregionItemList = Rx([
    CountryorregionItemModel(
        unitedKingdom: ImageConstant.imgComponent2.obs,
        unitedKingdom1: "United Kingdom".obs),
    CountryorregionItemModel(
        unitedKingdom: ImageConstant.imgComponent2.obs,
        unitedKingdom1: "Germany".obs),
    CountryorregionItemModel(
        unitedKingdom: ImageConstant.imgComponent2.obs,
        unitedKingdom1: "France".obs),
    CountryorregionItemModel(
        unitedKingdom: ImageConstant.imgUnitedKingdom.obs,
        unitedKingdom1: "United States".obs),
    CountryorregionItemModel(
        unitedKingdom: ImageConstant.imgComponent2.obs,
        unitedKingdom1: "Italy".obs),
    CountryorregionItemModel(
        unitedKingdom: ImageConstant.imgComponent2.obs,
        unitedKingdom1: "Portugal".obs),
    CountryorregionItemModel(
        unitedKingdom: ImageConstant.imgComponent2.obs,
        unitedKingdom1: "Brazil".obs)
  ]);
}
