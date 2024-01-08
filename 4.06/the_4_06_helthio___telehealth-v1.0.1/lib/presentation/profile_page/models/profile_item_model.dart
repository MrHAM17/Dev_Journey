import '../../../core/app_export.dart';

/// This class is used in the [profile_item_widget] screen.
class ProfileItemModel {
  ProfileItemModel({
    this.heartrate,
    this.heartRate,
    this.bpm,
    this.id,
  }) {
    heartrate = heartrate ?? Rx(ImageConstant.imgTelevision);
    heartRate = heartRate ?? Rx("Heart rate");
    bpm = bpm ?? Rx("215bpm");
    id = id ?? Rx("");
  }

  Rx<String>? heartrate;

  Rx<String>? heartRate;

  Rx<String>? bpm;

  Rx<String>? id;
}
