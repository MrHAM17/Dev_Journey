import 'package:flutter/material.dart';import 'package:the_5_17_housit___buyrentsell_property/core/app_export.dart';import 'package:the_5_17_housit___buyrentsell_property/presentation/extra_information_screen/models/extra_information_model.dart';import '../models/layout6_item_model.dart';import '../models/layout8_item_model.dart';import '../models/layout9_item_model.dart';import '../models/layout11_item_model.dart';/// A provider class for the ExtraInformationScreen.
///
/// This provider manages the state of the ExtraInformationScreen, including the
/// current extraInformationModelObj

// ignore_for_file: must_be_immutable
class ExtraInformationProvider extends ChangeNotifier {TextEditingController priceController = TextEditingController();

TextEditingController priceController1 = TextEditingController();

ExtraInformationModel extraInformationModelObj = ExtraInformationModel();

@override void dispose() { super.dispose(); priceController.dispose(); priceController1.dispose(); } 
void onSelectedChipView1(int index, bool value, ) { extraInformationModelObj.layout6ItemList.forEach((element) {element.isSelected = false;}); extraInformationModelObj.layout6ItemList[index].isSelected = value; notifyListeners(); } 
void onSelectedChipView2(int index, bool value, ) { extraInformationModelObj.layout9ItemList.forEach((element) {element.isSelected = false;}); extraInformationModelObj.layout9ItemList[index].isSelected = value; notifyListeners(); } 
void onSelectedChipView3(int index, bool value, ) { extraInformationModelObj.layout11ItemList.forEach((element) {element.isSelected = false;}); extraInformationModelObj.layout11ItemList[index].isSelected = value; notifyListeners(); } 
 }
