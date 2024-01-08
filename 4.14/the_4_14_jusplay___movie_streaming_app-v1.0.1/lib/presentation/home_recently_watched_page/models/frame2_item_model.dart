import '../../../core/app_export.dart';

/// This class is used in the [frame2_item_widget] screen.
class Frame2ItemModel {
  Frame2ItemModel({
    this.aladdin,
    this.id,
  }) {
    aladdin = aladdin ?? Rx(ImageConstant.imgAladdin);
    id = id ?? Rx("");
  }

  Rx<String>? aladdin;

  Rx<String>? id;
}
