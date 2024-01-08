import '../../../core/app_export.dart';
import 'profile_item_model.dart';

class ProfileModel {
  List<ProfileItemModel> profileItemList = [
    ProfileItemModel(
        heartrate: ImageConstant.imgTelevision,
        heartRate: "Heart rate",
        bpm: "215bpm"),
    ProfileItemModel(
        heartrate: ImageConstant.imgSettingsWhiteA700,
        heartRate: "Calories",
        bpm: "756cal"),
    ProfileItemModel(
        heartrate: ImageConstant.imgThumbsUpWhiteA700,
        heartRate: "Weight",
        bpm: "103lbs")
  ];
}
