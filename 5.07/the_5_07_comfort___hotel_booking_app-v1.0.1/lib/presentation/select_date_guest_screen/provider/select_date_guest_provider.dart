import 'package:flutter/material.dart';import 'package:the_5_07_comfort___hotel_booking_app/core/app_export.dart';import 'package:the_5_07_comfort___hotel_booking_app/presentation/select_date_guest_screen/models/select_date_guest_model.dart';import 'package:table_calendar/table_calendar.dart';/// A provider class for the SelectDateGuestScreen.
///
/// This provider manages the state of the SelectDateGuestScreen, including the
/// current selectDateGuestModelObj

// ignore_for_file: must_be_immutable
class SelectDateGuestProvider extends ChangeNotifier {SelectDateGuestModel selectDateGuestModelObj = SelectDateGuestModel();

DateTime? rangeStart;

DateTime? rangeEnd;

DateTime? selectedDay;

DateTime? focusedDay;

RangeSelectionMode rangeSelectionMode = RangeSelectionMode.toggledOn;

@override void dispose() { super.dispose(); } 
 }
