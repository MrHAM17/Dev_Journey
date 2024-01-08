import '../../../core/app_export.dart';

/// This class is used in the [movies5_item_widget] screen.
class Movies5ItemModel {
  Movies5ItemModel({
    this.iONetflix,
    this.title,
    this.title1,
    this.id,
  }) {
    iONetflix = iONetflix ?? ImageConstant.imgThumbnailImage180x120;
    title = title ?? "IO: Netflix";
    title1 = title1 ?? "In near future we must save earth";
    id = id ?? "";
  }

  String? iONetflix;

  String? title;

  String? title1;

  String? id;
}
