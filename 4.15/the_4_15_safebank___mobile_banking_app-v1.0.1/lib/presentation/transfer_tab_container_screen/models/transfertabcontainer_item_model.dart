import '../../../core/app_export.dart';

/// This class is used in the [transfertabcontainer_item_widget] screen.
class TransfertabcontainerItemModel {
  TransfertabcontainerItemModel({
    this.ellipse,
    this.id,
  }) {
    ellipse = ellipse ?? Rx(ImageConstant.imgEllipse309);
    id = id ?? Rx("");
  }

  Rx<String>? ellipse;

  Rx<String>? id;
}
