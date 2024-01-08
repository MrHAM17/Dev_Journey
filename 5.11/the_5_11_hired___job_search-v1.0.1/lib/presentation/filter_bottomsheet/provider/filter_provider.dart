import 'package:flutter/material.dart';
import 'package:the_5_11_hired___job_search/core/app_export.dart';
import 'package:the_5_11_hired___job_search/presentation/filter_bottomsheet/models/filter_model.dart';
import '../models/fiftyfive_item_model.dart';
import '../models/jobs_item_model.dart';

/// A provider class for the FilterBottomsheet.
///
/// This provider manages the state of the FilterBottomsheet, including the
/// current filterModelObj

// ignore_for_file: must_be_immutable
class FilterProvider extends ChangeNotifier {
  FilterModel filterModelObj = FilterModel();

  @override
  void dispose() {
    super.dispose();
  }

  void onSelectedChipView1(
    int index,
    bool value,
  ) {
    filterModelObj.fiftyfiveItemList.forEach((element) {
      element.isSelected = false;
    });
    filterModelObj.fiftyfiveItemList[index].isSelected = value;
    notifyListeners();
  }

  void onSelectedChipView2(
    int index,
    bool value,
  ) {
    filterModelObj.jobsItemList.forEach((element) {
      element.isSelected = false;
    });
    filterModelObj.jobsItemList[index].isSelected = value;
    notifyListeners();
  }
}
