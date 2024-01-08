import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/tickets1_item_model.dart';import 'package:the_6_07_comfort___hotel_booking_app/presentation/booking_ongoing_screen/models/booking_ongoing_model.dart';part 'booking_ongoing_state.dart';final bookingOngoingNotifier = StateNotifierProvider<BookingOngoingNotifier, BookingOngoingState>((ref) => BookingOngoingNotifier(BookingOngoingState(bookingOngoingModelObj: BookingOngoingModel(tickets1ItemList: [Tickets1ItemModel(royalePresident: "Royale President Hotel", image: ImageConstant.imgRectangle, parisFrance: "Paris, France")]))));
/// A notifier that manages the state of a BookingOngoing according to the event that is dispatched to it.
class BookingOngoingNotifier extends StateNotifier<BookingOngoingState> {BookingOngoingNotifier(BookingOngoingState state) : super(state);

 }
