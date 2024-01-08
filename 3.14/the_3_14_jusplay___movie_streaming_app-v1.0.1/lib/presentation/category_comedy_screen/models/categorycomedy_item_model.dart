import '../../../core/app_export.dart';

/// This class is used in the [categorycomedy_item_widget] screen.
class CategorycomedyItemModel {
  CategorycomedyItemModel({
    this.rectangle,
    this.id,
  }) {
    rectangle = rectangle ?? ImageConstant.imgRectangle12078;
    id = id ?? "";
  }

  String? rectangle;

  String? id;
}
