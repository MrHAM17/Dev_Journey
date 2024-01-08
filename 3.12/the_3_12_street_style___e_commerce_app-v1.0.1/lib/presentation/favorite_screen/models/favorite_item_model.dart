import '../../../core/app_export.dart';

/// This class is used in the [favorite_item_widget] screen.
class FavoriteItemModel {
  FavoriteItemModel({
    this.boxTee,
    this.boxTee1,
    this.id,
  }) {
    boxTee = boxTee ?? ImageConstant.imgRectangle12;
    boxTee1 = boxTee1 ?? "Box Tee";
    id = id ?? "";
  }

  String? boxTee;

  String? boxTee1;

  String? id;
}