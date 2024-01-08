import '../../../core/app_export.dart';

/// This class is used in the [speciallization_item_widget] screen.
class SpeciallizationItemModel {
  SpeciallizationItemModel({
    this.designCreative,
    this.designCreative1,
    this.id,
  }) {
    designCreative = designCreative ?? Rx(ImageConstant.imgCheckmark);
    designCreative1 = designCreative1 ?? Rx("Design & Creative");
    id = id ?? Rx("");
  }

  Rx<String>? designCreative;

  Rx<String>? designCreative1;

  Rx<String>? id;
}
