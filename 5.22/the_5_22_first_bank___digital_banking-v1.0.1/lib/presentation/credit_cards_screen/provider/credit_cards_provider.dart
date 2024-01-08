import 'package:flutter/material.dart';
import 'package:the_5_22_first_bank___digital_banking/core/app_export.dart';
import 'package:the_5_22_first_bank___digital_banking/presentation/credit_cards_screen/models/credit_cards_model.dart';
import '../models/balance2_item_model.dart';
import '../models/creditcards_item_model.dart';

/// A provider class for the CreditCardsScreen.
///
/// This provider manages the state of the CreditCardsScreen, including the
/// current creditCardsModelObj

// ignore_for_file: must_be_immutable
class CreditCardsProvider extends ChangeNotifier {
  TextEditingController searchController = TextEditingController();

  TextEditingController classicController = TextEditingController();

  TextEditingController nameController = TextEditingController();

  TextEditingController cardNumberController = TextEditingController();

  TextEditingController expirationDateController = TextEditingController();

  CreditCardsModel creditCardsModelObj = CreditCardsModel();

  int sliderIndex = 0;

  @override
  void dispose() {
    super.dispose();
    searchController.dispose();
    classicController.dispose();
    nameController.dispose();
    cardNumberController.dispose();
    expirationDateController.dispose();
  }
}
