import 'package:flutter/material.dart';
import 'package:the_5_06_helthio___telehealth/core/app_export.dart';
import 'package:the_5_06_helthio___telehealth/presentation/doctor_detail_screen/models/doctor_detail_model.dart';
import 'package:table_calendar/table_calendar.dart';
import '../models/am_item_model.dart';

/// A provider class for the DoctorDetailScreen.
///
/// This provider manages the state of the DoctorDetailScreen, including the
/// current doctorDetailModelObj

// ignore_for_file: must_be_immutable
class DoctorDetailProvider extends ChangeNotifier {
  DoctorDetailModel doctorDetailModelObj = DoctorDetailModel();

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
    doctorDetailModelObj.amItemList.forEach((element) {
      element.isSelected = false;
    });
    doctorDetailModelObj.amItemList[index].isSelected = value;
    notifyListeners();
  }
}
