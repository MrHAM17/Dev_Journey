import 'package:flutter/material.dart';import 'package:the_5_17_housit___buyrentsell_property/core/app_export.dart';import 'package:the_5_17_housit___buyrentsell_property/presentation/result_filter_screen/models/result_filter_model.dart';import '../models/filter_item_model.dart';import '../models/layout14_item_model.dart';/// A provider class for the ResultFilterScreen.
///
/// This provider manages the state of the ResultFilterScreen, including the
/// current resultFilterModelObj

// ignore_for_file: must_be_immutable
class ResultFilterProvider extends ChangeNotifier {TextEditingController searchController = TextEditingController();

ResultFilterModel resultFilterModelObj = ResultFilterModel();

@override void dispose() { super.dispose(); searchController.dispose(); } 
void onSelectedChipView1(int index, bool value, ) { resultFilterModelObj.filterItemList.forEach((element) {element.isSelected = false;}); resultFilterModelObj.filterItemList[index].isSelected = value; notifyListeners(); } 
 }
