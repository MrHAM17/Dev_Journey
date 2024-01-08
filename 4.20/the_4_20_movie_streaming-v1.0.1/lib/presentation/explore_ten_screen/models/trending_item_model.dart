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
    darkPhoenix = darkPhoenix ?? Rx(ImageConstant.imgThumbnailImage12);
    title = title ?? Rx("Dark Phoenix");
    subLabel = subLabel ?? Rx("Sub Label");
    star = star ?? Rx("(4.5)");
    id = id ?? Rx("");
  }

  Rx<String>? darkPhoenix;

  Rx<String>? title;

  Rx<String>? subLabel;

  Rx<String>? star;

  Rx<String>? id;
}
