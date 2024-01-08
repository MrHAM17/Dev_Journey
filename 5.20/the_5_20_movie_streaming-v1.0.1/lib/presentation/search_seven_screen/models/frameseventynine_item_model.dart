import '../../../core/app_export.dart';

/// This class is used in the [frameseventynine_item_widget] screen.
class FrameseventynineItemModel {
  FrameseventynineItemModel({
    this.tags,
    this.isSelected,
  }) {
    tags = tags ?? "Mark Love";
    isSelected = isSelected ?? false;
  }

  String? tags;

  bool? isSelected;
}
