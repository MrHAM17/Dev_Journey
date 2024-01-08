import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_6_04_health_care/presentation/book_an_appointment_screen/models/book_an_appointment_model.dart';
part 'book_an_appointment_state.dart';

final bookAnAppointmentNotifier =
    StateNotifierProvider<BookAnAppointmentNotifier, BookAnAppointmentState>(
        (ref) => BookAnAppointmentNotifier(BookAnAppointmentState(
            bookAnAppointmentModelObj: BookAnAppointmentModel())));

/// A notifier that manages the state of a BookAnAppointment according to the event that is dispatched to it.
class BookAnAppointmentNotifier extends StateNotifier<BookAnAppointmentState> {
  BookAnAppointmentNotifier(BookAnAppointmentState state) : super(state);
}
