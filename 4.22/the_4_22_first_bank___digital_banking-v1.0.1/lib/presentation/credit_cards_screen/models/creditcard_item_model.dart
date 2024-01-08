import '../../../core/app_export.dart';

/// This class is used in the [creditcard_item_widget] screen.
class CreditcardItemModel {
  CreditcardItemModel({
    this.cardType,
    this.secondaryText,
    this.bankName,
    this.dblBankName,
    this.viewDetailsText,
    this.id,
  }) {
    cardType = cardType ?? Rx("Card Type");
    secondaryText = secondaryText ?? Rx("Secondary");
    bankName = bankName ?? Rx("Bank");
    dblBankName = dblBankName ?? Rx("DBL Bank");
    viewDetailsText = viewDetailsText ?? Rx("View Details");
    id = id ?? Rx("");
  }

  Rx<String>? cardType;

  Rx<String>? secondaryText;

  Rx<String>? bankName;

  Rx<String>? dblBankName;

  Rx<String>? viewDetailsText;

  Rx<String>? id;
}
