import 'package:flutter/material.dart';
import 'package:the_5_06_helthio___telehealth/core/app_export.dart';
import 'package:the_5_06_helthio___telehealth/presentation/articles_screen/models/articles_model.dart';
import '../models/frametwentyfour_item_model.dart';
import '../models/eightynine_item_model.dart';
import '../models/sixty_item_model.dart';

/// A provider class for the ArticlesScreen.
///
/// This provider manages the state of the ArticlesScreen, including the
/// current articlesModelObj

// ignore_for_file: must_be_immutable
class ArticlesProvider extends ChangeNotifier {
  TextEditingController searchController = TextEditingController();

  ArticlesModel articlesModelObj = ArticlesModel();

  @override
  void dispose() {
    super.dispose();
    searchController.dispose();
  }

  void onSelectedChipView1(
    int index,
    bool value,
  ) {
    articlesModelObj.frametwentyfourItemList.forEach((element) {
      element.isSelected = false;
    });
    articlesModelObj.frametwentyfourItemList[index].isSelected = value;
    notifyListeners();
  }
}
