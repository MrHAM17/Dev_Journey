import 'package:flutter/material.dart';
import 'package:the_5_04_health_care/core/app_export.dart';
import 'package:the_5_04_health_care/presentation/dr_details_screen/models/dr_details_model.dart';
import 'package:table_calendar/table_calendar.dart';
import '../models/timeslots_item_model.dart';

/// A provider class for the DrDetailsScreen.
///
/// This provider manages the state of the DrDetailsScreen, including the
/// current drDetailsModelObj

// ignore_for_file: must_be_immutable
class DrDetailsProvider extends ChangeNotifier {
  DrDetailsModel drDetailsModelObj = DrDetailsModel();

  DateTime? rangeStart;

  DateTime? rangeEnd;

  DateTime? selectedDay;

  DateTime? focusedDay;

  RangeSelectionMode rangeSelectionMode = RangeSelectionMode.toggledOn;

  @override
  void dispose() {
    super.dispose();
  }

  void onSelectedChipView1(
    int index,
    bool value,
  ) {
    drDetailsModelObj.timeslotsItemList.forEach((element) {
      element.isSelected = false;
    });
    drDetailsModelObj.timeslotsItemList[index].isSelected = value;
    notifyListeners();
  }
}
