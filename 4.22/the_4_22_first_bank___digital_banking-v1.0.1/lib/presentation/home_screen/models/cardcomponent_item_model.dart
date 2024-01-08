import '../../../core/app_export.dart';

/// This class is used in the [cardcomponent_item_widget] screen.
class CardcomponentItemModel {
  CardcomponentItemModel({
    this.balance,
    this.balanceAmount,
    this.cardHolderName,
    this.cardHolderText,
    this.validThruDate,
    this.validThruText,
    this.cardNumberText,
    this.id,
  }) {
    balance = balance ?? Rx("Balance");
    balanceAmount = balanceAmount ?? Rx("5,756");
    cardHolderName = cardHolderName ?? Rx("CARD HOLDER");
    cardHolderText = cardHolderText ?? Rx("Eddy Cusuma");
    validThruDate = validThruDate ?? Rx("VALID THRU");
    validThruText = validThruText ?? Rx("12/22");
    cardNumberText = cardNumberText ?? Rx("3778 **** **** 1234");
    id = id ?? Rx("");
  }

  Rx<String>? balance;

  Rx<String>? balanceAmount;

  Rx<String>? cardHolderName;

  Rx<String>? cardHolderText;

  Rx<String>? validThruDate;

  Rx<String>? validThruText;

  Rx<String>? cardNumberText;

  Rx<String>? id;
}
