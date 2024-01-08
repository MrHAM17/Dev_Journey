import '../../../core/app_export.dart';
import 'saved_item_model.dart';

class SavedModel {
  List<SavedItemModel> savedItemList = [
    SavedItemModel(
        bag: ImageConstant.imgBag,
        digitalMarketing: "UX Designer",
        motorola: "Motorola",
        price: "560 - 12.000/Month"),
    SavedItemModel(
        bag: ImageConstant.imgCardano2,
        digitalMarketing: "UI/UX Designer",
        motorola: "Motorola",
        price: "560 - 12.000/Month"),
    SavedItemModel(
        bag: ImageConstant.imgSettingsRed800,
        digitalMarketing: "UI Designer",
        motorola: "Motorola",
        price: "560 - 12.000/Month")
  ];
}
