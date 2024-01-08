import '../../../core/app_export.dart';

/// This class is used in the [intrestrow1_item_widget] screen.
class Intrestrow1ItemModel {
  Intrestrow1ItemModel({
    this.chips,
    this.isSelected,
  }) {
    chips = chips ?? "Art";
    isSelected = isSelected ?? false;
  }

  String? chips;

  bool? isSelected;
}
