import '../../../core/app_export.dart';

/// This class is used in the [investmentsummary_item_widget] screen.
class InvestmentsummaryItemModel {
  InvestmentsummaryItemModel({
    this.moneyBagIcon,
    this.totalInvestedAmountText,
    this.investmentAmountText,
    this.id,
  }) {
    moneyBagIcon = moneyBagIcon ?? Rx(ImageConstant.imgMoneyBagOfDollars);
    totalInvestedAmountText =
        totalInvestedAmountText ?? Rx("Total Invested Amount");
    investmentAmountText = investmentAmountText ?? Rx("150,000");
    id = id ?? Rx("");
  }

  Rx<String>? moneyBagIcon;

  Rx<String>? totalInvestedAmountText;

  Rx<String>? investmentAmountText;

  Rx<String>? id;
}
