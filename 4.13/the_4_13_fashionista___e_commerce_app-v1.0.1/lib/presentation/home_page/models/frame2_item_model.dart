import '../../../core/app_export.dart';

/// This class is used in the [frame2_item_widget] screen.
class Frame2ItemModel {
  Frame2ItemModel({
    this.casualJeansShoes,
    this.casualJeansShoes1,
    this.id,
  }) {
    casualJeansShoes =
        casualJeansShoes ?? Rx(ImageConstant.imgUnsplashEmlkhdeydhg);
    casualJeansShoes1 = casualJeansShoes1 ?? Rx("Casual Jeans Shoes");
    id = id ?? Rx("");
  }

  Rx<String>? casualJeansShoes;

  Rx<String>? casualJeansShoes1;

  Rx<String>? id;
}
