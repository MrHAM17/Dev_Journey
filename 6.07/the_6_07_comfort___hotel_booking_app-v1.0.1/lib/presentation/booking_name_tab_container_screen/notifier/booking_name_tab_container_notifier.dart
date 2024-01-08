import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:the_6_07_comfort___hotel_booking_app/presentation/booking_name_tab_container_screen/models/booking_name_tab_container_model.dart';part 'booking_name_tab_container_state.dart';final bookingNameTabContainerNotifier = StateNotifierProvider<BookingNameTabContainerNotifier, BookingNameTabContainerState>((ref) => BookingNameTabContainerNotifier(BookingNameTabContainerState(bookingNameTabContainerModelObj: BookingNameTabContainerModel())));
/// A notifier that manages the state of a BookingNameTabContainer according to the event that is dispatched to it.
class BookingNameTabContainerNotifier extends StateNotifier<BookingNameTabContainerState> {BookingNameTabContainerNotifier(BookingNameTabContainerState state) : super(state);

 }
