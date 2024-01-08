import '../../../core/app_export.dart';
import 'cart_item_model.dart';

class CartModel {
  List<CartItemModel> cartItemList = [
    CartItemModel(
        image: ImageConstant.imgImage110x109,
        price: "12.50",
        shortsInYellow: "shorts in Yellow",
        one: "1"),
    CartItemModel(
        image: ImageConstant.imgImage12,
        price: "99.30",
        shortsInYellow: "Print Maxi Dress",
        one: "1")
  ];
}
