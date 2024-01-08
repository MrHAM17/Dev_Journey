import 'package:flutter/material.dart';import 'package:the_5_07_comfort___hotel_booking_app/core/app_export.dart';import 'package:the_5_07_comfort___hotel_booking_app/presentation/refund_method_screen/models/refund_method_model.dart';import '../models/refundmethod_item_model.dart';/// A provider class for the RefundMethodScreen.
///
/// This provider manages the state of the RefundMethodScreen, including the
/// current refundMethodModelObj

// ignore_for_file: must_be_immutable
class RefundMethodProvider extends ChangeNotifier {RefundMethodModel refundMethodModelObj = RefundMethodModel();

@override void dispose() { super.dispose(); } 
 }
