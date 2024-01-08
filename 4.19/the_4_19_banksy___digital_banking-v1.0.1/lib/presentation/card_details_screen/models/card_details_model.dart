import '../../../core/app_export.dart';
import 'carddetails_item_model.dart';

/// This class defines the variables used in the [card_details_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class CardDetailsModel {
  Rx<List<CarddetailsItemModel>> carddetailsItemList = Rx([
    CarddetailsItemModel(
        cart: ImageConstant.imgCart.obs,
        shopping: "Shopping".obs,
        time: "3:41 pm".obs,
        price: "-50.35".obs),
    CarddetailsItemModel(
        cart: ImageConstant.imgMdiFood.obs,
        shopping: "Food".obs,
        time: "1:41 pm".obs,
        price: "-10.00".obs),
    CarddetailsItemModel(
        cart: ImageConstant.imgLinkedin.obs,
        shopping: "Taxi".obs,
        time: "10:00 am".obs,
        price: "-15.00".obs),
    CarddetailsItemModel(
        shopping: "Mahi".obs, time: "6:46 pm".obs, price: "+30.00".obs),
    CarddetailsItemModel(
        shopping: "Adom".obs, time: "6:46 pm".obs, price: "+30.00".obs)
  ]);
}
