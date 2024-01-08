import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:table_calendar/table_calendar.dart';import 'package:the_3_16_tikpik___short_video__social_networking/presentation/when_is_your_birthday_screen/models/when_is_your_birthday_model.dart';part 'when_is_your_birthday_event.dart';part 'when_is_your_birthday_state.dart';/// A bloc that manages the state of a WhenIsYourBirthday according to the event that is dispatched to it.
class WhenIsYourBirthdayBloc extends Bloc<WhenIsYourBirthdayEvent, WhenIsYourBirthdayState> {WhenIsYourBirthdayBloc(WhenIsYourBirthdayState initialState) : super(initialState) { on<WhenIsYourBirthdayInitialEvent>(_onInitialize); }

_onInitialize(WhenIsYourBirthdayInitialEvent event, Emitter<WhenIsYourBirthdayState> emit, ) async  { emit(state.copyWith(dateController: TextEditingController(), rangeSelectionMode: RangeSelectionMode.toggledOn)); } 
 }
