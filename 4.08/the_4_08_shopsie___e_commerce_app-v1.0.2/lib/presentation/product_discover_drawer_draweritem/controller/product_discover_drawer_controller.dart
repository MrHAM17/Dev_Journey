import 'package:the_4_08_shopsie___e_commerce_app/core/app_export.dart';
import 'package:the_4_08_shopsie___e_commerce_app/presentation/product_discover_drawer_draweritem/models/product_discover_drawer_model.dart';

/// A controller class for the ProductDiscoverDrawerDraweritem.
///
/// This class manages the state of the ProductDiscoverDrawerDraweritem, including the
/// current productDiscoverDrawerModelObj
class ProductDiscoverDrawerController extends GetxController {
  Rx<ProductDiscoverDrawerModel> productDiscoverDrawerModelObj =
      ProductDiscoverDrawerModel().obs;
}
