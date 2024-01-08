import '../../../core/app_export.dart';

/// This class is used in the [sixtyseven_item_widget] screen.
class SixtysevenItemModel {
  SixtysevenItemModel({
    this.close,
    this.id,
  }) {
    close = close ?? Rx(ImageConstant.imgClose);
    id = id ?? Rx("");
  }

  Rx<String>? close;

  Rx<String>? id;
}
