import '../../../core/app_export.dart';

/// This class is used in the [frame_item_widget] screen.
class FrameItemModel {
  FrameItemModel({
    this.aladdin,
    this.id,
  }) {
    aladdin = aladdin ?? ImageConstant.imgAladdin;
    id = id ?? "";
  }

  String? aladdin;

  String? id;
}
