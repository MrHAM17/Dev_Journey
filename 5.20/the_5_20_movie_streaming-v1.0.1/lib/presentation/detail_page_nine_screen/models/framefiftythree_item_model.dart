import '../../../core/app_export.dart';

/// This class is used in the [framefiftythree_item_widget] screen.
class FramefiftythreeItemModel {
  FramefiftythreeItemModel({
    this.tags,
    this.isSelected,
  }) {
    tags = tags ?? "Action";
    isSelected = isSelected ?? false;
  }

  String? tags;

  bool? isSelected;
}
