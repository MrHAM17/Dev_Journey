import '../../../core/app_export.dart';
import 'balancecomponent_item_model.dart';

/// This class defines the variables used in the [accounts_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class AccountsModel {
  Rx<List<BalancecomponentItemModel>> balancecomponentItemList = Rx([
    BalancecomponentItemModel(
        moneyTag: ImageConstant.imgMoneyTag1.obs,
        balanceText: "My Balance".obs,
        balanceAmount: "12,750".obs),
    BalancecomponentItemModel(
        moneyTag: ImageConstant.imgGroup747.obs,
        balanceText: "Income".obs,
        balanceAmount: "5,600".obs),
    BalancecomponentItemModel(
        moneyTag: ImageConstant.img001Medical.obs,
        balanceText: "Expense".obs,
        balanceAmount: "3,460".obs),
    BalancecomponentItemModel(
        moneyTag: ImageConstant.img003Saving.obs,
        balanceText: "Total Saving".obs,
        balanceAmount: "7,920".obs)
  ]);
}
