import 'package:flutter/material.dart';import 'package:the_5_21_vertex___real_estate_app/core/app_export.dart';import 'package:the_5_21_vertex___real_estate_app/presentation/pick_date_screen/models/pick_date_model.dart';import 'package:table_calendar/table_calendar.dart';import '../models/time1_item_model.dart';/// A provider class for the PickDateScreen.
///
/// This provider manages the state of the PickDateScreen, including the
/// current pickDateModelObj

// ignore_for_file: must_be_immutable
class PickDateProvider extends ChangeNotifier {PickDateModel pickDateModelObj = PickDateModel();

DateTime? rangeStart;

DateTime? rangeEnd;

DateTime? selectedDay;

DateTime? focusedDay;

RangeSelectionMode rangeSelectionMode = RangeSelectionMode.toggledOn;

@override void dispose() { super.dispose(); } 
 }
