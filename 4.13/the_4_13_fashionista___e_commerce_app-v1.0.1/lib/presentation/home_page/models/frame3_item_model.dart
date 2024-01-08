import '../../../core/app_export.dart';

/// This class is used in the [frame3_item_widget] screen.
class Frame3ItemModel {
  Frame3ItemModel({
    this.blackJacket,
    this.casualJeansShoes,
    this.id,
  }) {
    blackJacket = blackJacket ?? Rx(ImageConstant.imgUnsplashEmlkhdeydhg2);
    casualJeansShoes = casualJeansShoes ?? Rx("Black Jacket");
    id = id ?? Rx("");
  }

  Rx<String>? blackJacket;

  Rx<String>? casualJeansShoes;

  Rx<String>? id;
}
