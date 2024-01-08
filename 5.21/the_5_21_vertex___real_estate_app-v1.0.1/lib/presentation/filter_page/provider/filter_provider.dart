import 'package:flutter/material.dart';import 'package:the_5_21_vertex___real_estate_app/core/app_export.dart';import 'package:the_5_21_vertex___real_estate_app/presentation/filter_page/models/filter_model.dart';import '../models/home_item_model.dart';import '../models/options2_item_model.dart';/// A provider class for the FilterPage.
///
/// This provider manages the state of the FilterPage, including the
/// current filterModelObj

// ignore_for_file: must_be_immutable
class FilterProvider extends ChangeNotifier {FilterModel filterModelObj = FilterModel();

@override void dispose() { super.dispose(); } 
onSelected(dynamic value) { for (var element in filterModelObj.dropdownItemList) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} notifyListeners(); } 
onSelected1(dynamic value) { for (var element in filterModelObj.dropdownItemList1) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} notifyListeners(); } 
onSelected2(dynamic value) { for (var element in filterModelObj.dropdownItemList2) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} notifyListeners(); } 
onSelected3(dynamic value) { for (var element in filterModelObj.dropdownItemList3) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} notifyListeners(); } 
void onSelectedChipView1(int index, bool value, ) { filterModelObj.homeItemList.forEach((element) {element.isSelected = false;}); filterModelObj.homeItemList[index].isSelected = value; notifyListeners(); } 
void onSelectedChipView2(int index, bool value, ) { filterModelObj.options2ItemList.forEach((element) {element.isSelected = false;}); filterModelObj.options2ItemList[index].isSelected = value; notifyListeners(); } 
 }
