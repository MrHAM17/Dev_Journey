import '../../../core/app_export.dart';

/// This class is used in the [specials_item_widget] screen.
class SpecialsItemModel {
  SpecialsItemModel({
    this.thePerfection,
    this.title,
    this.id,
  }) {
    thePerfection = thePerfection ?? ImageConstant.imgThumbnailImage;
    title = title ?? "The Perfection";
    id = id ?? "";
  }

  String? thePerfection;

  String? title;

  String? id;
}
