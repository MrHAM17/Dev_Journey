import 'package:flutter/material.dart';import 'package:the_5_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';import 'package:the_5_18_tune_cast___music_streaming__podcast_app/presentation/select_payment_method_screen/models/select_payment_method_model.dart';import '../models/selectpaymentmethod_item_model.dart';/// A provider class for the SelectPaymentMethodScreen.
///
/// This provider manages the state of the SelectPaymentMethodScreen, including the
/// current selectPaymentMethodModelObj

// ignore_for_file: must_be_immutable
class SelectPaymentMethodProvider extends ChangeNotifier {SelectPaymentMethodModel selectPaymentMethodModelObj = SelectPaymentMethodModel();

@override void dispose() { super.dispose(); } 
 }
