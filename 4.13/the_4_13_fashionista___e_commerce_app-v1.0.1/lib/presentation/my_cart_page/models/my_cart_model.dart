import '../../../core/app_export.dart';
import 'mycart_item_model.dart';

/// This class defines the variables used in the [my_cart_page],
/// and is typically used to hold data that is passed between different parts of the application.
class MyCartModel {
  Rx<List<MycartItemModel>> mycartItemList = Rx([
    MycartItemModel(
        jacket: ImageConstant.imgUnsplash8hqpxttomn0.obs,
        jacket1: "Jacket".obs,
        blackJacket: "Black Jacket".obs,
        sizeXL: "Size: XL".obs,
        one: "1".obs),
    MycartItemModel(
        jacket: ImageConstant.imgUnsplash8hqpxttomn0171x142.obs,
        jacket1: "Casual".obs,
        blackJacket: "Casual Jeans Shoes".obs,
        sizeXL: "Size: XL".obs,
        one: "1".obs)
  ]);
}
