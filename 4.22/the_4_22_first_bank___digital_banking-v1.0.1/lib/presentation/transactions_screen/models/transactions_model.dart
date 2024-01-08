import '../../../core/app_export.dart';
import 'cardcomponent1_item_model.dart';
import 'userprofile_item_model.dart';

/// This class defines the variables used in the [transactions_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class TransactionsModel {
  Rx<List<Cardcomponent1ItemModel>> cardcomponent1ItemList = Rx([
    Cardcomponent1ItemModel(
        balanceText: "Balance".obs,
        balanceAmount: "5,756".obs,
        cardHolderText: "CARD HOLDER".obs,
        cardHolderName: "Eddy Cusuma".obs,
        validThruText: "VALID THRU".obs,
        validThruDate: "12/22".obs,
        cardNumberText: "3778 **** **** 1234".obs),
    Cardcomponent1ItemModel(
        balanceText: "Balance".obs,
        balanceAmount: "5,756".obs,
        cardHolderText: "CARD HOLDER".obs,
        cardHolderName: "Eddy Cusuma".obs,
        validThruText: "VALID THRU".obs,
        validThruDate: "12/22".obs,
        cardNumberText: "3778 **** **** 1234".obs)
  ]);

  Rx<List<UserprofileItemModel>> userprofileItemList = Rx([
    UserprofileItemModel(
        arrowIcon: ImageConstant.imgArrowGreen600.obs,
        salesText: "Freepik Sales".obs,
        timeText: "25 Jan, 10.40 PM".obs,
        amountText: "+750".obs),
    UserprofileItemModel(
        arrowIcon: ImageConstant.imgArrow.obs,
        salesText: "Mobile Service".obs,
        timeText: "20 Jan, 10.40 PM".obs,
        amountText: "-150".obs),
    UserprofileItemModel(
        arrowIcon: ImageConstant.imgArrow.obs,
        salesText: "Wilson".obs,
        timeText: "15 Jan, 03.29 PM".obs,
        amountText: "-1050".obs),
    UserprofileItemModel(
        arrowIcon: ImageConstant.imgArrowGreen600.obs,
        salesText: "Emilly".obs,
        timeText: "14 Jan, 10.40 PM".obs,
        amountText: "+840".obs)
  ]);
}
