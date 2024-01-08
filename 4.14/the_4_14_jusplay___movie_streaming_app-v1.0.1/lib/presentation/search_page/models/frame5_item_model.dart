import '../../../core/app_export.dart';

/// This class is used in the [frame5_item_widget] screen.
class Frame5ItemModel {
  Frame5ItemModel({
    this.rectangle,
    this.id,
  }) {
    rectangle = rectangle ?? Rx(ImageConstant.imgRectangle12078135x98);
    id = id ?? Rx("");
  }

  Rx<String>? rectangle;

  Rx<String>? id;
}
