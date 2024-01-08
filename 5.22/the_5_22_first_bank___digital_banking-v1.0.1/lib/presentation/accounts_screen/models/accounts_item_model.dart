import '../../../core/app_export.dart';

/// This class is used in the [accounts_item_widget] screen.
class AccountsItemModel {
  AccountsItemModel({
    this.moneyTagOne,
    this.myBalance,
    this.price,
    this.id,
  }) {
    moneyTagOne = moneyTagOne ?? ImageConstant.imgMoneyTag1;
    myBalance = myBalance ?? "My Balance";
    price = price ?? "12,750";
    id = id ?? "";
  }

  String? moneyTagOne;

  String? myBalance;

  String? price;

  String? id;
}
