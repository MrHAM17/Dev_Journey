import '../../../core/app_export.dart';

/// This class is used in the [specials_item_widget] screen.
class SpecialsItemModel {
  SpecialsItemModel({
    this.thePerfection,
    this.title,
    this.id,
  }) {
    thePerfection = thePerfection ?? Rx(ImageConstant.imgThumbnailImage);
    title = title ?? Rx("The Perfection");
    id = id ?? Rx("");
  }

  Rx<String>? thePerfection;

  Rx<String>? title;

  Rx<String>? id;
}
