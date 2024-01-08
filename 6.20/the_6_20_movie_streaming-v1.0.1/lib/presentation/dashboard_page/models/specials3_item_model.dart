import '../../../core/app_export.dart';

/// This class is used in the [specials3_item_widget] screen.
class Specials3ItemModel {
  Specials3ItemModel({
    this.lukas,
    this.title,
    this.id,
  }) {
    lukas = lukas ?? ImageConstant.imgThumbnailImage11;
    title = title ?? "Lukas";
    id = id ?? "";
  }

  String? lukas;

  String? title;

  String? id;
}
