import 'package:the_4_13_fashionista___e_commerce_app/core/app_export.dart';
import 'package:the_4_13_fashionista___e_commerce_app/presentation/product_view_screen/models/product_view_model.dart';

/// A controller class for the ProductViewScreen.
///
/// This class manages the state of the ProductViewScreen, including the
/// current productViewModelObj
class ProductViewController extends GetxController {
  Rx<ProductViewModel> productViewModelObj = ProductViewModel().obs;
}
