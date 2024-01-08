import '../../../core/app_export.dart';

/// This class is used in the [frametwentyfour_item_widget] screen.
class FrametwentyfourItemModel {
  FrametwentyfourItemModel({
    this.covidNineteen,
    this.isSelected,
  }) {
    covidNineteen = covidNineteen ?? "Covid-19";
    isSelected = isSelected ?? false;
  }

  String? covidNineteen;

  bool? isSelected;
}
