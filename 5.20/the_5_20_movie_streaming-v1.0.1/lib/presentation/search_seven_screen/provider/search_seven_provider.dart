import 'package:flutter/material.dart';
import 'package:the_5_20_movie_streaming/core/app_export.dart';
import 'package:the_5_20_movie_streaming/presentation/search_seven_screen/models/search_seven_model.dart';
import '../models/searchseven_item_model.dart';
import '../models/frameseventynine_item_model.dart';

/// A provider class for the SearchSevenScreen.
///
/// This provider manages the state of the SearchSevenScreen, including the
/// current searchSevenModelObj

// ignore_for_file: must_be_immutable
class SearchSevenProvider extends ChangeNotifier {
  TextEditingController searchController = TextEditingController();

  SearchSevenModel searchSevenModelObj = SearchSevenModel();

  @override
  void dispose() {
    super.dispose();
    searchController.dispose();
  }

  void onSelectedChipView1(
    int index,
    bool value,
  ) {
    searchSevenModelObj.frameseventynineItemList.forEach((element) {
      element.isSelected = false;
    });
    searchSevenModelObj.frameseventynineItemList[index].isSelected = value;
    notifyListeners();
  }
}
