import '../../../core/app_export.dart';

/// This class is used in the [carddetails_item_widget] screen.
class CarddetailsItemModel {
  CarddetailsItemModel({
    this.cart,
    this.shopping,
    this.time,
    this.price,
    this.id,
  }) {
    cart = cart ?? ImageConstant.imgCart;
    shopping = shopping ?? "Shopping";
    time = time ?? "3:41 pm";
    price = price ?? "-50.35";
    id = id ?? "";
  }

  String? cart;

  String? shopping;

  String? time;

  String? price;

  String? id;
}