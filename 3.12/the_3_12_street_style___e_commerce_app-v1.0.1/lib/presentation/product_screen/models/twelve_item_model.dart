import '../../../core/app_export.dart';

/// This class is used in the [twelve_item_widget] screen.
class TwelveItemModel {
  TwelveItemModel({
    this.image,
    this.id,
  }) {
    image = image ?? ImageConstant.imgRectangle14;
    id = id ?? "";
  }

  String? image;

  String? id;
}
