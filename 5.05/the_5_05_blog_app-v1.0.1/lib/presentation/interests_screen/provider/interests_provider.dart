import 'package:flutter/material.dart';
import 'package:the_5_05_blog_app/core/app_export.dart';
import 'package:the_5_05_blog_app/presentation/interests_screen/models/interests_model.dart';
import '../models/intrestrow1_item_model.dart';

/// A provider class for the InterestsScreen.
///
/// This provider manages the state of the InterestsScreen, including the
/// current interestsModelObj

// ignore_for_file: must_be_immutable
class InterestsProvider extends ChangeNotifier {
  InterestsModel interestsModelObj = InterestsModel();

  @override
  void dispose() {
    super.dispose();
  }

  void onSelectedChipView1(
    int index,
    bool value,
  ) {
    interestsModelObj.intrestrow1ItemList.forEach((element) {
      element.isSelected = false;
    });
    interestsModelObj.intrestrow1ItemList[index].isSelected = value;
    notifyListeners();
  }
}
