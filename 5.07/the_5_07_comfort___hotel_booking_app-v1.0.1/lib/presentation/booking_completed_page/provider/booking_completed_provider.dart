import 'package:flutter/material.dart';import 'package:the_5_07_comfort___hotel_booking_app/core/app_export.dart';import 'package:the_5_07_comfort___hotel_booking_app/presentation/booking_completed_page/models/booking_completed_model.dart';import '../models/tickets_item_model.dart';/// A provider class for the BookingCompletedPage.
///
/// This provider manages the state of the BookingCompletedPage, including the
/// current bookingCompletedModelObj

// ignore_for_file: must_be_immutable
class BookingCompletedProvider extends ChangeNotifier {BookingCompletedModel bookingCompletedModelObj = BookingCompletedModel();

@override void dispose() { super.dispose(); } 
 }
