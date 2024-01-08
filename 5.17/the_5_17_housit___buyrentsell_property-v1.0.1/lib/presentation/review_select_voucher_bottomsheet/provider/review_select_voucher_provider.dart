import 'package:flutter/material.dart';import 'package:the_5_17_housit___buyrentsell_property/core/app_export.dart';import 'package:the_5_17_housit___buyrentsell_property/presentation/review_select_voucher_bottomsheet/models/review_select_voucher_model.dart';/// A provider class for the ReviewSelectVoucherBottomsheet.
///
/// This provider manages the state of the ReviewSelectVoucherBottomsheet, including the
/// current reviewSelectVoucherModelObj

// ignore_for_file: must_be_immutable
class ReviewSelectVoucherProvider extends ChangeNotifier {TextEditingController televisionController = TextEditingController();

ReviewSelectVoucherModel reviewSelectVoucherModelObj = ReviewSelectVoucherModel();

@override void dispose() { super.dispose(); televisionController.dispose(); } 
 }
