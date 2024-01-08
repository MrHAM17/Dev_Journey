import '../../../core/app_export.dart';
import 'carddetails_item_model.dart';

class CardDetailsModel {
  List<CarddetailsItemModel> carddetailsItemList = [
    CarddetailsItemModel(
        cart: ImageConstant.imgCart,
        shopping: "Shopping",
        time: "3:41 pm",
        price: "-50.35"),
    CarddetailsItemModel(
        cart: ImageConstant.imgMdiFood,
        shopping: "Food",
        time: "1:41 pm",
        price: "-10.00"),
    CarddetailsItemModel(
        cart: ImageConstant.imgLinkedin,
        shopping: "Taxi",
        time: "10:00 am",
        price: "-15.00"),
    CarddetailsItemModel(shopping: "Mahi", time: "6:46 pm", price: "+30.00"),
    CarddetailsItemModel(shopping: "Adom", time: "6:46 pm", price: "+30.00")
  ];
}
