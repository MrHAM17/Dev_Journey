import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/tickets2_item_model.dart';
import 'package:the_3_07_comfort___hotel_booking_app/presentation/booking_cancelled_screen/models/booking_cancelled_model.dart';
part 'booking_cancelled_event.dart';
part 'booking_cancelled_state.dart';

/// A bloc that manages the state of a BookingCancelled according to the event that is dispatched to it.
class BookingCancelledBloc
    extends Bloc<BookingCancelledEvent, BookingCancelledState> {
  BookingCancelledBloc(BookingCancelledState initialState)
      : super(initialState) {
    on<BookingCancelledInitialEvent>(_onInitialize);
  }

  _onInitialize(
    BookingCancelledInitialEvent event,
    Emitter<BookingCancelledState> emit,
  ) async {
    emit(state.copyWith(
        bookingCancelledModelObj: state.bookingCancelledModelObj?.copyWith(
      tickets2ItemList: fillTickets2ItemList(),
    )));
  }

  List<Tickets2ItemModel> fillTickets2ItemList() {
    return [
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
    ];
  }
}
