import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/tickets_item_model.dart';
import 'package:the_6_07_comfort___hotel_booking_app/presentation/booking_completed_page/models/booking_completed_model.dart';
part 'booking_completed_state.dart';

final bookingCompletedNotifier =
    StateNotifierProvider<BookingCompletedNotifier, BookingCompletedState>(
  (ref) => BookingCompletedNotifier(BookingCompletedState(
    bookingCompletedModelObj: BookingCompletedModel(ticketsItemList: [
      TicketsItemModel(
          bulgariResort: ImageConstant.imgRectangle,
          bulgariResort1: "Bulgari Resort",
          parisFrance: "Paris, France",
          yeayyouhavecompletedit: "Yeay, you have completed it!"),
      TicketsItemModel(
          bulgariResort: ImageConstant.imgRectangle100x100,
          bulgariResort1: "Hotel Martinez Cannes",
          parisFrance: "Amsterdam, Netherlands",
          yeayyouhavecompletedit: "Yeay, you have completed it!")
    ]),
  )),
);

/// A notifier that manages the state of a BookingCompleted according to the event that is dispatched to it.
class BookingCompletedNotifier extends StateNotifier<BookingCompletedState> {
  BookingCompletedNotifier(BookingCompletedState state) : super(state) {}
}
