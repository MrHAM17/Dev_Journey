import 'package:flutter/material.dart';
import 'package:the_5_11_hired___job_search/core/app_export.dart';
import 'package:the_5_11_hired___job_search/presentation/home_page/models/home_model.dart';
import '../models/frame_item_model.dart';
import '../models/eightyeight_item_model.dart';
import '../models/fulltime1_item_model.dart';
import '../models/fulltime3_item_model.dart';

/// A provider class for the HomePage.
///
/// This provider manages the state of the HomePage, including the
/// current homeModelObj

// ignore_for_file: must_be_immutable
class HomeProvider extends ChangeNotifier {
  TextEditingController searchController = TextEditingController();

  HomeModel homeModelObj = HomeModel();

  @override
  void dispose() {
    super.dispose();
    searchController.dispose();
  }

  void onSelectedChipView1(
    int index,
    bool value,
  ) {
    homeModelObj.fulltime1ItemList.forEach((element) {
      element.isSelected = false;
    });
    homeModelObj.fulltime1ItemList[index].isSelected = value;
    notifyListeners();
  }

  void onSelectedChipView2(
    int index,
    bool value,
  ) {
    homeModelObj.fulltime3ItemList.forEach((element) {
      element.isSelected = false;
    });
    homeModelObj.fulltime3ItemList[index].isSelected = value;
    notifyListeners();
  }
}
