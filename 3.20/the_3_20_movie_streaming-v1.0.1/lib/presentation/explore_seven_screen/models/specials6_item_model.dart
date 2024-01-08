import '../../../core/app_export.dart';

/// This class is used in the [specials6_item_widget] screen.
class Specials6ItemModel {
  Specials6ItemModel({
    this.drama,
    this.drama1,
    this.id,
  }) {
    drama = drama ?? ImageConstant.imgThumbnailImage60x90;
    drama1 = drama1 ?? "Drama";
    id = id ?? "";
  }

  String? drama;

  String? drama1;

  String? id;
}
