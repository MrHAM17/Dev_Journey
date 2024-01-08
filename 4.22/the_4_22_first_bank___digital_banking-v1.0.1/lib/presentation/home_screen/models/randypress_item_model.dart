import '../../../core/app_export.dart';

/// This class is used in the [randypress_item_widget] screen.
class RandypressItemModel {
  RandypressItemModel({
    this.userImage,
    this.text1,
    this.text2,
    this.id,
  }) {
    userImage = userImage ?? Rx(ImageConstant.imgEllipse18);
    text1 = text1 ?? Rx("Livia Bator");
    text2 = text2 ?? Rx("CEO");
    id = id ?? Rx("");
  }

  Rx<String>? userImage;

  Rx<String>? text1;

  Rx<String>? text2;

  Rx<String>? id;
}
