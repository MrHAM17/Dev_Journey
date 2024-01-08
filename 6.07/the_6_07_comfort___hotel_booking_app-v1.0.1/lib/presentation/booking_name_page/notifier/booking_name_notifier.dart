import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:the_6_07_comfort___hotel_booking_app/presentation/booking_name_page/models/booking_name_model.dart';part 'booking_name_state.dart';final bookingNameNotifier = StateNotifierProvider<BookingNameNotifier, BookingNameState>((ref) => BookingNameNotifier(BookingNameState(labelController: TextEditingController(), labelController1: TextEditingController(), dateController: TextEditingController(), emailController: TextEditingController(), phoneController: TextEditingController(), bookingNameModelObj: BookingNameModel())));
/// A notifier that manages the state of a BookingName according to the event that is dispatched to it.
class BookingNameNotifier extends StateNotifier<BookingNameState> {BookingNameNotifier(BookingNameState state) : super(state);

 }
