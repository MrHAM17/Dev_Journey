import '../../../core/app_export.dart';

/// This class is used in the [eightythree_item_widget] screen.
class EightythreeItemModel {
  EightythreeItemModel({
    this.trash,
    this.id,
  }) {
    trash = trash ?? ImageConstant.imgTrashBlue500;
    id = id ?? "";
  }

  String? trash;

  String? id;
}
