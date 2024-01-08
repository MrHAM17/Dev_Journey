import '../../../core/app_export.dart';

/// This class is used in the [thirtytwo_item_widget] screen.
class ThirtytwoItemModel {
  ThirtytwoItemModel({
    this.frame,
    this.id,
  }) {
    frame = frame ?? Rx(ImageConstant.imgFrame2261);
    id = id ?? Rx("");
  }

  Rx<String>? frame;

  Rx<String>? id;
}
