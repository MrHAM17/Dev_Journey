import '../../../core/app_export.dart';

/// This class is used in the [trending_item_widget] screen.
class TrendingItemModel {
  TrendingItemModel({
    this.darkPhoenix,
    this.title,
    this.subLabel,
    this.star,
    this.id,
  }) {
    darkPhoenix = darkPhoenix ?? ImageConstant.imgThumbnailImage12;
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
