import '../../../core/app_export.dart';

/// This class is used in the [cardcomponent2_item_widget] screen.
class Cardcomponent2ItemModel {
  Cardcomponent2ItemModel({
    this.balanceText,
    this.balanceAmount,
    this.cardHolderText,
    this.cardHolderName,
    this.validthru,
    this.validThruText,
    this.cardNumberText,
    this.id,
  }) {
    balanceText = balanceText ?? Rx("Balance");
    balanceAmount = balanceAmount ?? Rx("5,756");
    cardHolderText = cardHolderText ?? Rx("CARD HOLDER");
    cardHolderName = cardHolderName ?? Rx("Eddy Cusuma");
    validthru = validthru ?? Rx("VALID THRU");
    validThruText = validThruText ?? Rx("12/22");
    cardNumberText = cardNumberText ?? Rx("3778 **** **** 1234");
    id = id ?? Rx("");
  }

  Rx<String>? balanceText;

  Rx<String>? balanceAmount;

  Rx<String>? cardHolderText;

  Rx<String>? cardHolderName;

  Rx<String>? validthru;

  Rx<String>? validThruText;

  Rx<String>? cardNumberText;

  Rx<String>? id;
}
