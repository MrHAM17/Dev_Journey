import 'package:the_4_12_street_style___e_commerce_app/core/app_export.dart';
import 'package:the_4_12_street_style___e_commerce_app/presentation/shop_screen/models/shop_model.dart';

/// A controller class for the ShopScreen.
///
/// This class manages the state of the ShopScreen, including the
/// current shopModelObj
class ShopController extends GetxController {
  Rx<ShopModel> shopModelObj = ShopModel().obs;
}
