import '../../../core/app_export.dart';

/// This class is used in the [twelve_item_widget] screen.
class TwelveItemModel {
  TwelveItemModel({
    this.image,
    this.id,
  }) {
    image = image ?? Rx(ImageConstant.imgRectangle14);
    id = id ?? Rx("");
  }

  Rx<String>? image;

  Rx<String>? id;
}
