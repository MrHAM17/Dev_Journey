import 'package:flutter/material.dart';import 'package:the_5_17_housit___buyrentsell_property/core/app_export.dart';import 'package:the_5_17_housit___buyrentsell_property/presentation/property_details_screen/models/property_details_model.dart';import '../models/transactiontype_item_model.dart';import '../models/layout24_item_model.dart';import '../models/layout25_item_model.dart';import '../models/viewallreviews_item_model.dart';import '../models/propertydetails_item_model.dart';/// A provider class for the PropertyDetailsScreen.
///
/// This provider manages the state of the PropertyDetailsScreen, including the
/// current propertyDetailsModelObj

// ignore_for_file: must_be_immutable
class PropertyDetailsProvider extends ChangeNotifier {PropertyDetailsModel propertyDetailsModelObj = PropertyDetailsModel();

@override void dispose() { super.dispose(); } 
onSelected(dynamic value) { for (var element in propertyDetailsModelObj.dropdownItemList) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} notifyListeners(); } 
void onSelectedChipView1(int index, bool value, ) { propertyDetailsModelObj.transactiontypeItemList.forEach((element) {element.isSelected = false;}); propertyDetailsModelObj.transactiontypeItemList[index].isSelected = value; notifyListeners(); } 
 }
