import '../../../core/app_export.dart';
import 'orderslist_item_model.dart';

class ProfileMyOrdersModel {
  List<OrderslistItemModel> orderslistItemList = [
    OrderslistItemModel(
        image: ImageConstant.imgImage110x109,
        price: "12.50",
        shortsInYellow: "shorts in Yellow",
        one: "1"),
    OrderslistItemModel(
        image: ImageConstant.imgImage12,
        price: "99.30",
        shortsInYellow: "Print Maxi Dress",
        one: "1")
  ];
}
