import 'package:the_4_13_fashionista___e_commerce_app/core/app_export.dart';
import 'package:the_4_13_fashionista___e_commerce_app/presentation/explore_shop_screen/models/explore_shop_model.dart';

/// A controller class for the ExploreShopScreen.
///
/// This class manages the state of the ExploreShopScreen, including the
/// current exploreShopModelObj
class ExploreShopController extends GetxController {
  Rx<ExploreShopModel> exploreShopModelObj = ExploreShopModel().obs;
}
