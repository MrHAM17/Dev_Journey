import 'package:flutter/material.dart';import 'package:the_5_07_comfort___hotel_booking_app/core/app_export.dart';import 'package:the_5_07_comfort___hotel_booking_app/presentation/booking_ongoing_screen/models/booking_ongoing_model.dart';import '../models/tickets1_item_model.dart';/// A provider class for the BookingOngoingScreen.
///
/// This provider manages the state of the BookingOngoingScreen, including the
/// current bookingOngoingModelObj

// ignore_for_file: must_be_immutable
class BookingOngoingProvider extends ChangeNotifier {BookingOngoingModel bookingOngoingModelObj = BookingOngoingModel();

@override void dispose() { super.dispose(); } 
 }
