import '../../../core/app_export.dart';

/// This class is used in the [favorite_item_widget] screen.
class FavoriteItemModel {
  FavoriteItemModel({
    this.boxTee,
    this.boxTee1,
    this.id,
  }) {
    boxTee = boxTee ?? Rx(ImageConstant.imgRectangle12);
    boxTee1 = boxTee1 ?? Rx("Box Tee");
    id = id ?? Rx("");
  }

  Rx<String>? boxTee;

  Rx<String>? boxTee1;

  Rx<String>? id;
}
