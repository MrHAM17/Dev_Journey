import 'package:flutter/material.dart';import 'package:the_5_01_e_commerce/core/app_export.dart';import 'package:the_5_01_e_commerce/presentation/credit_card_and_debit_screen/models/credit_card_and_debit_model.dart';import '../models/cards_item_model.dart';/// A provider class for the CreditCardAndDebitScreen.
///
/// This provider manages the state of the CreditCardAndDebitScreen, including the
/// current creditCardAndDebitModelObj

// ignore_for_file: must_be_immutable
class CreditCardAndDebitProvider extends ChangeNotifier {CreditCardAndDebitModel creditCardAndDebitModelObj = CreditCardAndDebitModel();

@override void dispose() { super.dispose(); } 
 }
