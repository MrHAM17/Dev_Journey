import '../../../core/app_export.dart';

/// This class is used in the [jobs_item_widget] screen.
class JobsItemModel {
  Rx<String>? jobs = Rx("Part Time");

  Rx<bool>? isSelected = Rx(false);
}
