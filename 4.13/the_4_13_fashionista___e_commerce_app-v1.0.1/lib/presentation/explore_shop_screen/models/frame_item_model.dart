import '../../../core/app_export.dart';

/// This class is used in the [frame_item_widget] screen.
class FrameItemModel {
  Rx<String>? tabs = Rx("Electonics");

  Rx<bool>? isSelected = Rx(false);
}
