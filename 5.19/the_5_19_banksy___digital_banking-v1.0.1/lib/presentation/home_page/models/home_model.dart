import '../../../core/app_export.dart';
import 'options_item_model.dart';

class HomeModel {
  List<OptionsItemModel> optionsItemList = [
    OptionsItemModel(
        favorite: ImageConstant.imgFavorite,
        sendMoney: "Send\nMoney",
        card: "To acc to acc"),
    OptionsItemModel(
        favorite: ImageConstant.imgFavoriteCyan400,
        sendMoney: "Receive\nMoney",
        card: "Manage Account"),
    OptionsItemModel(
        favorite: ImageConstant.imgRiExchangeDollarLine,
        sendMoney: "Money\nExchange",
        card: "Exchange Money"),
    OptionsItemModel(
        favorite: ImageConstant.imgMdiCreditCardClockOutline,
        sendMoney: "Pay\nBills",
        card: "Govt.paybills"),
    OptionsItemModel(
        favorite: ImageConstant.imgFrame11,
        sendMoney: "Bank To\nBank",
        card: "Send money"),
    OptionsItemModel(
        favorite: ImageConstant.imgBookmark,
        sendMoney: "Mobile\nPrepaid",
        card: "Recharge Mobile")
  ];
}
