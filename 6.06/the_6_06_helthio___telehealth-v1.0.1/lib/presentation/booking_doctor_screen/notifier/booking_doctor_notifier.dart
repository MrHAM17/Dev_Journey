import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_6_06_helthio___telehealth/presentation/booking_doctor_screen/models/booking_doctor_model.dart';
part 'booking_doctor_state.dart';

final bookingDoctorNotifier =
    StateNotifierProvider<BookingDoctorNotifier, BookingDoctorState>((ref) =>
        BookingDoctorNotifier(
            BookingDoctorState(bookingDoctorModelObj: BookingDoctorModel())));

/// A notifier that manages the state of a BookingDoctor according to the event that is dispatched to it.
class BookingDoctorNotifier extends StateNotifier<BookingDoctorState> {
  BookingDoctorNotifier(BookingDoctorState state) : super(state);
}
