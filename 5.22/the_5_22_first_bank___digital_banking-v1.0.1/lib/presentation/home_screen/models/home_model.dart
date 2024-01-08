import '../../../core/app_export.dart';
import 'balance_item_model.dart';
import 'liviabator_item_model.dart';

class HomeModel {
  List<BalanceItemModel> balanceItemList = [
    BalanceItemModel(
        balance: "Balance",
        price: "5,756",
        cardholder: "CARD HOLDER",
        eddyCusuma: "Eddy Cusuma",
        validthru: "VALID THRU",
        oneThousandTwoHundredTwentyTwo: "12/22",
        thirtySevenMillionSevenHundred: "3778 **** **** 1234")
  ];

  List<LiviabatorItemModel> liviabatorItemList = [
    LiviabatorItemModel(
        liviaBator: ImageConstant.imgEllipse18,
        liviaBator1: "Livia Bator",
        ceo: "CEO"),
    LiviabatorItemModel(
        liviaBator: ImageConstant.imgEllipse1850x50,
        liviaBator1: "Randy Press",
        ceo: "Director"),
    LiviabatorItemModel(
        liviaBator: ImageConstant.imgEllipse181,
        liviaBator1: "Workman",
        ceo: "Designer")
  ];
}
