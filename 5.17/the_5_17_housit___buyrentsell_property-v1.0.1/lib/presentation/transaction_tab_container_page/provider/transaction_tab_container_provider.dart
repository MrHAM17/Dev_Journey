import 'package:flutter/material.dart';import 'package:the_5_17_housit___buyrentsell_property/core/app_export.dart';import 'package:the_5_17_housit___buyrentsell_property/presentation/transaction_tab_container_page/models/transaction_tab_container_model.dart';/// A provider class for the TransactionTabContainerPage.
///
/// This provider manages the state of the TransactionTabContainerPage, including the
/// current transactionTabContainerModelObj

// ignore_for_file: must_be_immutable
class TransactionTabContainerProvider extends ChangeNotifier {TransactionTabContainerModel transactionTabContainerModelObj = TransactionTabContainerModel();

@override void dispose() { super.dispose(); } 
 }
