import 'package:the_4_13_fashionista___e_commerce_app/core/app_export.dart';
import 'package:the_4_13_fashionista___e_commerce_app/presentation/discount_items_screen/models/discount_items_model.dart';

/// A controller class for the DiscountItemsScreen.
///
/// This class manages the state of the DiscountItemsScreen, including the
/// current discountItemsModelObj
class DiscountItemsController extends GetxController {
  Rx<DiscountItemsModel> discountItemsModelObj = DiscountItemsModel().obs;
}
