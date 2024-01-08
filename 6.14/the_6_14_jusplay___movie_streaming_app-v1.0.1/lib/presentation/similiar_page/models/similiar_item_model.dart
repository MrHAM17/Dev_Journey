import '../../../core/app_export.dart';

/// This class is used in the [similiar_item_widget] screen.
class SimiliarItemModel {
  SimiliarItemModel({
    this.image,
    this.image1,
    this.image2,
    this.id,
  }) {
    image = image ?? ImageConstant.imgRectangle12078;
    image1 = image1 ?? ImageConstant.imgRectangle12078140x102;
    image2 = image2 ?? ImageConstant.imgRectangle120781;
    id = id ?? "";
  }

  String? image;

  String? image1;

  String? image2;

  String? id;
}
