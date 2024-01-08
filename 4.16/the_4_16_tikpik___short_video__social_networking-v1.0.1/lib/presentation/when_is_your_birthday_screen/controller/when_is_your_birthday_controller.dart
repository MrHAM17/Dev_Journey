import 'package:the_4_16_tikpik___short_video__social_networking/core/app_export.dart';import 'package:the_4_16_tikpik___short_video__social_networking/presentation/when_is_your_birthday_screen/models/when_is_your_birthday_model.dart';import 'package:flutter/material.dart';import 'package:table_calendar/table_calendar.dart';/// A controller class for the WhenIsYourBirthdayScreen.
///
/// This class manages the state of the WhenIsYourBirthdayScreen, including the
/// current whenIsYourBirthdayModelObj
class WhenIsYourBirthdayController extends GetxController {TextEditingController dateController = TextEditingController();

Rx<WhenIsYourBirthdayModel> whenIsYourBirthdayModelObj = WhenIsYourBirthdayModel().obs;

DateTime? rangeStart;

DateTime? rangeEnd;

DateTime? selectedDay;

Rx<DateTime> focusedDay = DateTime.now().obs;

Rx<RangeSelectionMode> rangeSelectionMode = RangeSelectionMode.toggledOn.obs;

@override void onClose() { super.onClose(); dateController.dispose(); } 
 }
