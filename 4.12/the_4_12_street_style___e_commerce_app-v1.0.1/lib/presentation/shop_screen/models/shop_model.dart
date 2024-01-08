import '../../../core/app_export.dart';
import 'shop_item_model.dart';

/// This class defines the variables used in the [shop_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ShopModel {
  Rx<List<ShopItemModel>> shopItemList = Rx([
    ShopItemModel(
        surgeShort: ImageConstant.imgRectangle9.obs,
        surgeShort1: "Surge Short".obs,
        price: "68 USD".obs),
    ShopItemModel(
        surgeShort: ImageConstant.imgRectangle9237x175.obs,
        surgeShort1: "Sweat Jogger French".obs,
        price: "68 USD".obs)
  ]);
}
