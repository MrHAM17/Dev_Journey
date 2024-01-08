import '../../../core/app_export.dart';
import 'options_item_model.dart';

/// This class defines the variables used in the [home_page],
/// and is typically used to hold data that is passed between different parts of the application.
class HomeModel {
  Rx<List<OptionsItemModel>> optionsItemList = Rx([
    OptionsItemModel(
        favorite: ImageConstant.imgFavorite.obs,
        sendMoney: "Send\nMoney".obs,
        card: "To acc to acc".obs),
    OptionsItemModel(
        favorite: ImageConstant.imgFavoriteCyan400.obs,
        sendMoney: "Receive\nMoney".obs,
        card: "Manage Account".obs),
    OptionsItemModel(
        favorite: ImageConstant.imgRiExchangeDollarLine.obs,
        sendMoney: "Money\nExchange".obs,
        card: "Exchange Money".obs),
    OptionsItemModel(
        favorite: ImageConstant.imgMdiCreditCardClockOutline.obs,
        sendMoney: "Pay\nBills".obs,
        card: "Govt.paybills".obs),
    OptionsItemModel(
        favorite: ImageConstant.imgFrame11.obs,
        sendMoney: "Bank To\nBank".obs,
        card: "Send money".obs),
    OptionsItemModel(
        favorite: ImageConstant.imgBookmark.obs,
        sendMoney: "Mobile\nPrepaid".obs,
        card: "Recharge Mobile".obs)
  ]);
}
