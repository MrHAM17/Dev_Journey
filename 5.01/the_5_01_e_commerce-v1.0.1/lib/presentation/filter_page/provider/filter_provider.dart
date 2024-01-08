import 'package:flutter/material.dart';import 'package:the_5_01_e_commerce/core/app_export.dart';import 'package:the_5_01_e_commerce/presentation/filter_page/models/filter_model.dart';import '../models/buyingformate_item_model.dart';import '../models/itemlocation_item_model.dart';import '../models/showonly_item_model.dart';/// A provider class for the FilterPage.
///
/// This provider manages the state of the FilterPage, including the
/// current filterModelObj

// ignore_for_file: must_be_immutable
class FilterProvider extends ChangeNotifier {FilterModel filterModelObj = FilterModel();

@override void dispose() { super.dispose(); } 
void onSelectedChipView1(int index, bool value, ) { filterModelObj.buyingformateItemList.forEach((element) {element.isSelected = false;}); filterModelObj.buyingformateItemList[index].isSelected = value; notifyListeners(); } 
void onSelectedChipView2(int index, bool value, ) { filterModelObj.itemlocationItemList.forEach((element) {element.isSelected = false;}); filterModelObj.itemlocationItemList[index].isSelected = value; notifyListeners(); } 
void onSelectedChipView3(int index, bool value, ) { filterModelObj.showonlyItemList.forEach((element) {element.isSelected = false;}); filterModelObj.showonlyItemList[index].isSelected = value; notifyListeners(); } 
 }
