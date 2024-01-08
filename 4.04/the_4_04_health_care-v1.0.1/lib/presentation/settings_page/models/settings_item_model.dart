import '../../../core/app_export.dart';

/// This class is used in the [settings_item_widget] screen.
class SettingsItemModel {
  SettingsItemModel({
    this.heartrate,
    this.heartRate,
    this.heartRateCount,
    this.id,
  }) {
    heartrate = heartrate ?? Rx(ImageConstant.imgTelevision);
    heartRate = heartRate ?? Rx("Heart rate");
    heartRateCount = heartRateCount ?? Rx("215bpm");
    id = id ?? Rx("");
  }

  Rx<String>? heartrate;

  Rx<String>? heartRate;

  Rx<String>? heartRateCount;

  Rx<String>? id;
}
