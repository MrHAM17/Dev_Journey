import 'package:flutter/material.dart';
import 'package:the_5_11_hired___job_search/core/app_export.dart';
import 'package:the_5_11_hired___job_search/presentation/saved_page/models/saved_model.dart';
import '../models/saved_item_model.dart';
import '../models/fulltime7_item_model.dart';

/// A provider class for the SavedPage.
///
/// This provider manages the state of the SavedPage, including the
/// current savedModelObj

// ignore_for_file: must_be_immutable
class SavedProvider extends ChangeNotifier {
  SavedModel savedModelObj = SavedModel();

  @override
  void dispose() {
    super.dispose();
  }

  void onSelectedChipView1(
    int index,
    bool value,
  ) {
    savedModelObj.fulltime7ItemList.forEach((element) {
      element.isSelected = false;
    });
    savedModelObj.fulltime7ItemList[index].isSelected = value;
    notifyListeners();
  }
}
