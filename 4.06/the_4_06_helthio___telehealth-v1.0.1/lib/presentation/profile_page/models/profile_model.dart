import '../../../core/app_export.dart';
import 'profile_item_model.dart';

/// This class defines the variables used in the [profile_page],
/// and is typically used to hold data that is passed between different parts of the application.
class ProfileModel {
  Rx<List<ProfileItemModel>> profileItemList = Rx([
    ProfileItemModel(
        heartrate: ImageConstant.imgTelevision.obs,
        heartRate: "Heart rate".obs,
        bpm: "215bpm".obs),
    ProfileItemModel(
        heartrate: ImageConstant.imgSettingsWhiteA700.obs,
        heartRate: "Calories".obs,
        bpm: "756cal".obs),
    ProfileItemModel(
        heartrate: ImageConstant.imgThumbsUpWhiteA700.obs,
        heartRate: "Weight".obs,
        bpm: "103lbs".obs)
  ]);
}
