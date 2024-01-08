import 'package:flutter/material.dart';
import 'package:the_5_20_movie_streaming/core/app_export.dart';
import 'package:the_5_20_movie_streaming/presentation/detail_page_nine_screen/models/detail_page_nine_model.dart';
import '../models/framefiftythree_item_model.dart';
import '../models/movies1_item_model.dart';

/// A provider class for the DetailPageNineScreen.
///
/// This provider manages the state of the DetailPageNineScreen, including the
/// current detailPageNineModelObj

// ignore_for_file: must_be_immutable
class DetailPageNineProvider extends ChangeNotifier {
  DetailPageNineModel detailPageNineModelObj = DetailPageNineModel();

  @override
  void dispose() {
    super.dispose();
  }

  void onSelectedChipView1(
    int index,
    bool value,
  ) {
    detailPageNineModelObj.framefiftythreeItemList.forEach((element) {
      element.isSelected = false;
    });
    detailPageNineModelObj.framefiftythreeItemList[index].isSelected = value;
    notifyListeners();
  }
}
