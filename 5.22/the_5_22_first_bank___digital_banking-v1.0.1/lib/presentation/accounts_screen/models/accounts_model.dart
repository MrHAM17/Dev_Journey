import '../../../core/app_export.dart';
import 'accounts_item_model.dart';

class AccountsModel {
  List<AccountsItemModel> accountsItemList = [
    AccountsItemModel(
        moneyTagOne: ImageConstant.imgMoneyTag1,
        myBalance: "My Balance",
        price: "12,750"),
    AccountsItemModel(
        moneyTagOne: ImageConstant.imgGroup747,
        myBalance: "Income",
        price: "5,600"),
    AccountsItemModel(
        moneyTagOne: ImageConstant.img001Medical,
        myBalance: "Expense",
        price: "3,460"),
    AccountsItemModel(
        moneyTagOne: ImageConstant.img003Saving,
        myBalance: "Total Saving",
        price: "7,920")
  ];
}
