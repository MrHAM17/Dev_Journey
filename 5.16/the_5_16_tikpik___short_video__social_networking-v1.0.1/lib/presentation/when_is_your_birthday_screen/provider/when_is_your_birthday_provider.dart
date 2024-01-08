import 'package:flutter/material.dart';import 'package:the_5_16_tikpik___short_video__social_networking/core/app_export.dart';import 'package:the_5_16_tikpik___short_video__social_networking/presentation/when_is_your_birthday_screen/models/when_is_your_birthday_model.dart';import 'package:table_calendar/table_calendar.dart';/// A provider class for the WhenIsYourBirthdayScreen.
///
/// This provider manages the state of the WhenIsYourBirthdayScreen, including the
/// current whenIsYourBirthdayModelObj

// ignore_for_file: must_be_immutable
class WhenIsYourBirthdayProvider extends ChangeNotifier {TextEditingController dateController = TextEditingController();

WhenIsYourBirthdayModel whenIsYourBirthdayModelObj = WhenIsYourBirthdayModel();

DateTime? rangeStart;

DateTime? rangeEnd;

DateTime? selectedDay;

DateTime? focusedDay;

RangeSelectionMode rangeSelectionMode = RangeSelectionMode.toggledOn;

@override void dispose() { super.dispose(); dateController.dispose(); } 
 }
