import '../../../core/app_export.dart';

/// This class is used in the [fiftyfive_item_widget] screen.
class FiftyfiveItemModel {
  FiftyfiveItemModel({
    this.categories,
    this.isSelected,
  }) {
    categories = categories ?? "Design & Creative";
    isSelected = isSelected ?? false;
  }

  String? categories;

  bool? isSelected;
}
