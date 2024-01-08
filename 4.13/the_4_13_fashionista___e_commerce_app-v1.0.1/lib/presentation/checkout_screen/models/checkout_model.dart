import '../../../core/app_export.dart';
import 'checkout_item_model.dart';

/// This class defines the variables used in the [checkout_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class CheckoutModel {
  Rx<List<CheckoutItemModel>> checkoutItemList = Rx([
    CheckoutItemModel(
        creditCard: ImageConstant.imgUser.obs, creditCard1: "Credit Card".obs),
    CheckoutItemModel(
        creditCard: ImageConstant.imgFlatcoloriconsgoogle.obs,
        creditCard1: "Google Pay".obs),
    CheckoutItemModel(
        creditCard: ImageConstant.imgUimapple.obs,
        creditCard1: "Apple Pay".obs),
    CheckoutItemModel(
        creditCard: ImageConstant.imgTelevision.obs, creditCard1: "Paypal".obs)
  ]);
}
