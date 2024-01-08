import '../../../core/app_export.dart';

/// This class is used in the [shop_item_widget] screen.
class ShopItemModel {
  ShopItemModel({
    this.surgeShort,
    this.surgeShort1,
    this.price,
    this.id,
  }) {
    surgeShort = surgeShort ?? ImageConstant.imgRectangle9;
    surgeShort1 = surgeShort1 ?? "Surge Short";
    price = price ?? "68 USD";
    id = id ?? "";
  }

  String? surgeShort;

  String? surgeShort1;

  String? price;

  String? id;
}
