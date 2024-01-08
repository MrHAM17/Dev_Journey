import '../../../core/app_export.dart';
import 'search_item_model.dart';

/// This class defines the variables used in the [search_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SearchModel {
  Rx<List<SearchItemModel>> searchItemList = Rx([
    SearchItemModel(
        settings: ImageConstant.imgSettingsRed800.obs,
        digitalMarketing: "Senior UI/UX Designer".obs,
        motorola: "Motorola".obs,
        price: "560 - 12.000/Month".obs),
    SearchItemModel(
        settings: ImageConstant.imgCardano2.obs,
        digitalMarketing: "Senior UI/UX Designer".obs,
        motorola: "Motorola".obs,
        price: "660 - 10.000/Month".obs),
    SearchItemModel(
        settings: ImageConstant.imgCardano2.obs,
        digitalMarketing: "Marketing Manager".obs,
        motorola: "Motorola".obs,
        price: "560 - 12.000/Month".obs),
    SearchItemModel(
        settings: ImageConstant.imgSettings.obs,
        digitalMarketing: "Senior UI/UX Designer".obs,
        motorola: "Motorola".obs,
        price: "560 - 12.000/Month".obs)
  ]);
}
