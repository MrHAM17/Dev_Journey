import 'package:flutter/material.dart';import 'package:the_5_17_housit___buyrentsell_property/core/app_export.dart';import 'package:the_5_17_housit___buyrentsell_property/presentation/summary_change_payment_bottomsheet/models/summary_change_payment_model.dart';import '../models/layout1_item_model.dart';/// A provider class for the SummaryChangePaymentBottomsheet.
///
/// This provider manages the state of the SummaryChangePaymentBottomsheet, including the
/// current summaryChangePaymentModelObj

// ignore_for_file: must_be_immutable
class SummaryChangePaymentProvider extends ChangeNotifier {SummaryChangePaymentModel summaryChangePaymentModelObj = SummaryChangePaymentModel();

@override void dispose() { super.dispose(); } 
 }
