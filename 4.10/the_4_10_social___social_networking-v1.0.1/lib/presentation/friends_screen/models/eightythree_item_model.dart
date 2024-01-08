import '../../../core/app_export.dart';

/// This class is used in the [eightythree_item_widget] screen.
class EightythreeItemModel {
  EightythreeItemModel({
    this.trash,
    this.id,
  }) {
    trash = trash ?? Rx(ImageConstant.imgTrashBlue500);
    id = id ?? Rx("");
  }

  Rx<String>? trash;

  Rx<String>? id;
}
