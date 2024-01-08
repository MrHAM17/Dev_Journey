import 'package:flutter/material.dart';import 'package:the_5_17_housit___buyrentsell_property/core/app_export.dart';import 'package:the_5_17_housit___buyrentsell_property/presentation/transaction_page/models/transaction_model.dart';import '../models/transaction_item_model.dart';/// A provider class for the TransactionPage.
///
/// This provider manages the state of the TransactionPage, including the
/// current transactionModelObj

// ignore_for_file: must_be_immutable
class TransactionProvider extends ChangeNotifier {TransactionModel transactionModelObj = TransactionModel();

@override void dispose() { super.dispose(); } 
 }
