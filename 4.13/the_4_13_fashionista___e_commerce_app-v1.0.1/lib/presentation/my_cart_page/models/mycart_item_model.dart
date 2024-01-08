import '../../../core/app_export.dart';

/// This class is used in the [mycart_item_widget] screen.
class MycartItemModel {
  MycartItemModel({
    this.jacket,
    this.jacket1,
    this.blackJacket,
    this.sizeXL,
    this.one,
    this.id,
  }) {
    jacket = jacket ?? Rx(ImageConstant.imgUnsplash8hqpxttomn0);
    jacket1 = jacket1 ?? Rx("Jacket");
    blackJacket = blackJacket ?? Rx("Black Jacket");
    sizeXL = sizeXL ?? Rx("Size: XL");
    one = one ?? Rx("1");
    id = id ?? Rx("");
  }

  Rx<String>? jacket;

  Rx<String>? jacket1;

  Rx<String>? blackJacket;

  Rx<String>? sizeXL;

  Rx<String>? one;

  Rx<String>? id;
}
