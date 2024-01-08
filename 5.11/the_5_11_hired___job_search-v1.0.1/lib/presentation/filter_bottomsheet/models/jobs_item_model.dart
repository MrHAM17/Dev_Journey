import '../../../core/app_export.dart';

/// This class is used in the [jobs_item_widget] screen.
class JobsItemModel {
  JobsItemModel({
    this.jobs,
    this.isSelected,
  }) {
    jobs = jobs ?? "Part Time";
    isSelected = isSelected ?? false;
  }

  String? jobs;

  bool? isSelected;
}
