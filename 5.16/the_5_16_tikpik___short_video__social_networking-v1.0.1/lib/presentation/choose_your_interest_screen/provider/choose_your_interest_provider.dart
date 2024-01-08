import 'package:flutter/material.dart';import 'package:the_5_16_tikpik___short_video__social_networking/core/app_export.dart';import 'package:the_5_16_tikpik___short_video__social_networking/presentation/choose_your_interest_screen/models/choose_your_interest_model.dart';import '../models/sizelargetypeborder_item_model.dart';/// A provider class for the ChooseYourInterestScreen.
///
/// This provider manages the state of the ChooseYourInterestScreen, including the
/// current chooseYourInterestModelObj

// ignore_for_file: must_be_immutable
class ChooseYourInterestProvider extends ChangeNotifier {ChooseYourInterestModel chooseYourInterestModelObj = ChooseYourInterestModel();

@override void dispose() { super.dispose(); } 
void onSelectedChipView1(int index, bool value, ) { chooseYourInterestModelObj.sizelargetypeborderItemList.forEach((element) {element.isSelected = false;}); chooseYourInterestModelObj.sizelargetypeborderItemList[index].isSelected = value; notifyListeners(); } 
 }
