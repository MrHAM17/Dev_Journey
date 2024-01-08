import '../../../core/app_export.dart';

/// This class is used in the [fortyseven_item_widget] screen.
class FortysevenItemModel {
  FortysevenItemModel({
    this.skills,
    this.isSelected,
  }) {
    skills = skills ?? "Design & Creative";
    isSelected = isSelected ?? false;
  }

  String? skills;

  bool? isSelected;
}
