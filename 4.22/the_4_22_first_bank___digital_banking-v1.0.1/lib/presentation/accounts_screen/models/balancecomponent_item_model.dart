import '../../../core/app_export.dart';

/// This class is used in the [balancecomponent_item_widget] screen.
class BalancecomponentItemModel {
  BalancecomponentItemModel({
    this.moneyTag,
    this.balanceText,
    this.balanceAmount,
    this.id,
  }) {
    moneyTag = moneyTag ?? Rx(ImageConstant.imgMoneyTag1);
    balanceText = balanceText ?? Rx("My Balance");
    balanceAmount = balanceAmount ?? Rx("12,750");
    id = id ?? Rx("");
  }

  Rx<String>? moneyTag;

  Rx<String>? balanceText;

  Rx<String>? balanceAmount;

  Rx<String>? id;
}
