import '../../../core/app_export.dart';

/// This class is used in the [cardcomponent1_item_widget] screen.
class Cardcomponent1ItemModel {
  Cardcomponent1ItemModel({
    this.balanceText,
    this.balanceAmount,
    this.cardHolderText,
    this.cardHolderName,
    this.validThruText,
    this.validThruDate,
    this.cardNumberText,
    this.id,
  }) {
    balanceText = balanceText ?? Rx("Balance");
    balanceAmount = balanceAmount ?? Rx("5,756");
    cardHolderText = cardHolderText ?? Rx("CARD HOLDER");
    cardHolderName = cardHolderName ?? Rx("Eddy Cusuma");
    validThruText = validThruText ?? Rx("VALID THRU");
    validThruDate = validThruDate ?? Rx("12/22");
    cardNumberText = cardNumberText ?? Rx("3778 **** **** 1234");
    id = id ?? Rx("");
  }

  Rx<String>? balanceText;

  Rx<String>? balanceAmount;

  Rx<String>? cardHolderText;

  Rx<String>? cardHolderName;

  Rx<String>? validThruText;

  Rx<String>? validThruDate;

  Rx<String>? cardNumberText;

  Rx<String>? id;
}
