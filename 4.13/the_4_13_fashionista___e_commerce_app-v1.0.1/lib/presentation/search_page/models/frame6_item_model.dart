import '../../../core/app_export.dart';

/// This class is used in the [frame6_item_widget] screen.
class Frame6ItemModel {
  Frame6ItemModel({
    this.unsplashQnUURoX,
    this.id,
  }) {
    unsplashQnUURoX =
        unsplashQnUURoX ?? Rx(ImageConstant.imgUnsplashQnuUr0o5x8);
    id = id ?? Rx("");
  }

  Rx<String>? unsplashQnUURoX;

  Rx<String>? id;
}
