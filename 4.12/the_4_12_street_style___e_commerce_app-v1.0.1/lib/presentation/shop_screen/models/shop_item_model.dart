import '../../../core/app_export.dart';

/// This class is used in the [shop_item_widget] screen.
class ShopItemModel {
  ShopItemModel({
    this.surgeShort,
    this.surgeShort1,
    this.price,
    this.id,
  }) {
    surgeShort = surgeShort ?? Rx(ImageConstant.imgRectangle9);
    surgeShort1 = surgeShort1 ?? Rx("Surge Short");
    price = price ?? Rx("68 USD");
    id = id ?? Rx("");
  }

  Rx<String>? surgeShort;

  Rx<String>? surgeShort1;

  Rx<String>? price;

  Rx<String>? id;
}
