import '../../../core/app_export.dart';

/// This class is used in the [tags_item_widget] screen.
class TagsItemModel {
  TagsItemModel({
    this.chipSmall,
    this.isSelected,
  }) {
    chipSmall = chipSmall ?? "Travel";
    isSelected = isSelected ?? false;
  }

  String? chipSmall;

  bool? isSelected;
}
