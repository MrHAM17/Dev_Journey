import '../../../core/app_export.dart';
import 'balance2_item_model.dart';
import 'creditcards_item_model.dart';

class CreditCardsModel {
  List<Balance2ItemModel> balance2ItemList = [
    Balance2ItemModel(
        balance: "Balance",
        fiveThousandSevenHundredFiftyS: "5,756",
        cardholder: "CARD HOLDER",
        eddyCusuma: "Eddy Cusuma",
        validthru: "VALID THRU",
        oneThousandTwoHundredTwentyTwo: "12/22",
        thirtySevenMillionSevenHundred: "3778 **** **** 1234")
  ];

  List<CreditcardsItemModel> creditcardsItemList = [
    CreditcardsItemModel(
        cardType: "Card Type",
        secondary: "Secondary",
        bank: "Bank",
        dBLBank: "DBL Bank",
        viewDetails: "View Details"),
    CreditcardsItemModel(
        cardType: "Card Type",
        secondary: "Secondary",
        bank: "Bank",
        dBLBank: "BRC Bank",
        viewDetails: "View Details"),
    CreditcardsItemModel(
        cardType: "Card Type",
        secondary: "Secondary",
        bank: "Bank",
        dBLBank: "ABM Bank",
        viewDetails: "View Details")
  ];
}
