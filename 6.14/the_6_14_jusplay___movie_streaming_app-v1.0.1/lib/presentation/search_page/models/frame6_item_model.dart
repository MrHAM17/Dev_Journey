import '../../../core/app_export.dart';

/// This class is used in the [frame6_item_widget] screen.
class Frame6ItemModel {
  Frame6ItemModel({
    this.rectangle,
    this.id,
  }) {
    rectangle = rectangle ?? ImageConstant.imgRectangle12082;
    id = id ?? "";
  }

  String? rectangle;

  String? id;
}
