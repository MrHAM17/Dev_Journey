import 'package:flutter/material.dart';import 'package:the_5_07_comfort___hotel_booking_app/core/app_export.dart';import 'package:the_5_07_comfort___hotel_booking_app/presentation/booking_cancelled_screen/models/booking_cancelled_model.dart';import '../models/tickets2_item_model.dart';/// A provider class for the BookingCancelledScreen.
///
/// This provider manages the state of the BookingCancelledScreen, including the
/// current bookingCancelledModelObj

// ignore_for_file: must_be_immutable
class BookingCancelledProvider extends ChangeNotifier {BookingCancelledModel bookingCancelledModelObj = BookingCancelledModel();

@override void dispose() { super.dispose(); } 
 }
