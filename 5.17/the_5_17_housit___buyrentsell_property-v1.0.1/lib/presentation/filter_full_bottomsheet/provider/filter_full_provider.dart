import 'package:flutter/material.dart';import 'package:the_5_17_housit___buyrentsell_property/core/app_export.dart';import 'package:the_5_17_housit___buyrentsell_property/presentation/filter_full_bottomsheet/models/filter_full_model.dart';import '../models/widget_item_model.dart';import '../models/widget2_item_model.dart';/// A provider class for the FilterFullBottomsheet.
///
/// This provider manages the state of the FilterFullBottomsheet, including the
/// current filterFullModelObj

// ignore_for_file: must_be_immutable
class FilterFullProvider extends ChangeNotifier {TextEditingController searchController = TextEditingController();

TextEditingController priceController = TextEditingController();

TextEditingController formValueController = TextEditingController();

FilterFullModel filterFullModelObj = FilterFullModel();

@override void dispose() { super.dispose(); searchController.dispose(); priceController.dispose(); formValueController.dispose(); } 
void onSelectedChipView1(int index, bool value, ) { filterFullModelObj.widgetItemList.forEach((element) {element.isSelected = false;}); filterFullModelObj.widgetItemList[index].isSelected = value; notifyListeners(); } 
void onSelectedChipView2(int index, bool value, ) { filterFullModelObj.widget2ItemList.forEach((element) {element.isSelected = false;}); filterFullModelObj.widget2ItemList[index].isSelected = value; notifyListeners(); } 
 }
