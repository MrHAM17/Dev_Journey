import '../../../core/app_export.dart';

/// This class is used in the [trending1_item_widget] screen.
class Trending1ItemModel {
  Trending1ItemModel({
    this.darkPhoenix,
    this.title,
    this.subLabel,
    this.star,
    this.id,
  }) {
    darkPhoenix = darkPhoenix ?? ImageConstant.imgThumbnailImage140x90;
    title = title ?? "Dark Phoenix";
    subLabel = subLabel ?? "Sub Label";
    star = star ?? "(4.5)";
    id = id ?? "";
  }

  String? darkPhoenix;

  String? title;

  String? subLabel;

  String? star;

  String? id;
}
