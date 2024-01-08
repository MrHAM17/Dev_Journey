import '../../../core/app_export.dart';

/// This class is used in the [aladdin_item_widget] screen.
class AladdinItemModel {
  AladdinItemModel({
    this.aladdin,
    this.id,
  }) {
    aladdin = aladdin ?? Rx(ImageConstant.imgAladdin2);
    id = id ?? Rx("");
  }

  Rx<String>? aladdin;

  Rx<String>? id;
}
