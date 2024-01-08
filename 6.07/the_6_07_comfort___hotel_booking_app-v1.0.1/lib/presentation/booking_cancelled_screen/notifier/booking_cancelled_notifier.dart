import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/tickets2_item_model.dart';
import 'package:the_6_07_comfort___hotel_booking_app/presentation/booking_cancelled_screen/models/booking_cancelled_model.dart';
part 'booking_cancelled_state.dart';

final bookingCancelledNotifier =
    StateNotifierProvider<BookingCancelledNotifier, BookingCancelledState>(
  (ref) => BookingCancelledNotifier(BookingCancelledState(
    bookingCancelledModelObj: BookingCancelledModel(tickets2ItemList: [
      Tickets2ItemModel(
          palmsCasinoResort: ImageConstant.imgRectangle,
          palmsCasinoResort1: "Palms Casino Resort",
          londonUnitedKingdom: "London, United Kingdom",
          youCanceledThis: "You canceled this hotel booking"),
      Tickets2ItemModel(
          palmsCasinoResort: ImageConstant.imgRectangle100x100,
          palmsCasinoResort1: "The Mark Hotel",
          londonUnitedKingdom: "Luxemburg, Germany",
          youCanceledThis: "You canceled this hotel booking")
    ]),
  )),
);

/// A notifier that manages the state of a BookingCancelled according to the event that is dispatched to it.
class BookingCancelledNotifier extends StateNotifier<BookingCancelledState> {
  BookingCancelledNotifier(BookingCancelledState state) : super(state) {}
}
