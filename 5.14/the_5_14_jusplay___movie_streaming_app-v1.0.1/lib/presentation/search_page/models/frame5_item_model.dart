import '../../../core/app_export.dart';

/// This class is used in the [frame5_item_widget] screen.
class Frame5ItemModel {
  Frame5ItemModel({
    this.rectangle,
    this.id,
  }) {
    rectangle = rectangle ?? ImageConstant.imgRectangle12078135x98;
    id = id ?? "";
  }

  String? rectangle;

  String? id;
}
