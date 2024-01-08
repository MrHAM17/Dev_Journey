import 'package:the_4_12_street_style___e_commerce_app/core/app_export.dart';
import 'package:the_4_12_street_style___e_commerce_app/presentation/product_screen/models/product_model.dart';

/// A controller class for the ProductScreen.
///
/// This class manages the state of the ProductScreen, including the
/// current productModelObj
class ProductController extends GetxController {
  Rx<ProductModel> productModelObj = ProductModel().obs;

  Rx<int> sliderIndex = 0.obs;

  @override
  void onReady() {
    Get.toNamed(
      AppRoutes.myOrderScreen,
    );
  }
}
