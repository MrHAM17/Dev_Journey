import '../../../core/app_export.dart';
import 'cardcomponent2_item_model.dart';
import 'creditcard_item_model.dart';

/// This class defines the variables used in the [credit_cards_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class CreditCardsModel {
  Rx<List<Cardcomponent2ItemModel>> cardcomponent2ItemList = Rx([
    Cardcomponent2ItemModel(
        balanceText: "Balance".obs,
        balanceAmount: "5,756".obs,
        cardHolderText: "CARD HOLDER".obs,
        cardHolderName: "Eddy Cusuma".obs,
        validthru: "VALID THRU".obs,
        validThruText: "12/22".obs,
        cardNumberText: "3778 **** **** 1234".obs)
  ]);

  Rx<List<CreditcardItemModel>> creditcardItemList = Rx([
    CreditcardItemModel(
        cardType: "Card Type".obs,
        secondaryText: "Secondary".obs,
        bankName: "Bank".obs,
        dblBankName: "DBL Bank".obs,
        viewDetailsText: "View Details".obs),
    CreditcardItemModel(
        cardType: "Card Type".obs,
        secondaryText: "Secondary".obs,
        bankName: "Bank".obs,
        dblBankName: "BRC Bank".obs,
        viewDetailsText: "View Details".obs),
    CreditcardItemModel(
        cardType: "Card Type".obs,
        secondaryText: "Secondary".obs,
        bankName: "Bank".obs,
        dblBankName: "ABM Bank".obs,
        viewDetailsText: "View Details".obs)
  ]);
}
