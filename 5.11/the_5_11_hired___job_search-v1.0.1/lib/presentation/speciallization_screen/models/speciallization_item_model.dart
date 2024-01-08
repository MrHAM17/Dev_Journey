import '../../../core/app_export.dart';

/// This class is used in the [speciallization_item_widget] screen.
class SpeciallizationItemModel {
  SpeciallizationItemModel({
    this.designCreative,
    this.designCreative1,
    this.id,
  }) {
    designCreative = designCreative ?? ImageConstant.imgCheckmark;
    designCreative1 = designCreative1 ?? "Design & Creative";
    id = id ?? "";
  }

  String? designCreative;

  String? designCreative1;

  String? id;
}
