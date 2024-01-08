import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:table_calendar/table_calendar.dart';import 'package:the_6_07_comfort___hotel_booking_app/presentation/select_date_guest_screen/models/select_date_guest_model.dart';part 'select_date_guest_state.dart';final selectDateGuestNotifier = StateNotifierProvider<SelectDateGuestNotifier, SelectDateGuestState>((ref) => SelectDateGuestNotifier(SelectDateGuestState(rangeStart: DateTime.now(), rangeEnd: DateTime.now(), selectedDay: DateTime.now(), focusedDay: DateTime.now(), rangeSelectionMode: RangeSelectionMode.toggledOn, selectDateGuestModelObj: SelectDateGuestModel())));
/// A notifier that manages the state of a SelectDateGuest according to the event that is dispatched to it.
class SelectDateGuestNotifier extends StateNotifier<SelectDateGuestState> {SelectDateGuestNotifier(SelectDateGuestState state) : super(state);

 }
