import 'package:flutter/material.dart';import 'package:the_5_17_housit___buyrentsell_property/core/app_export.dart';import 'package:the_5_17_housit___buyrentsell_property/presentation/edit_form_screen/models/edit_form_model.dart';import '../models/layout15_item_model.dart';import '../models/layout17_item_model.dart';import '../models/shape_item_model.dart';import '../models/layout19_item_model.dart';import '../models/layout21_item_model.dart';import '../models/layout22_item_model.dart';import '../models/seventy_item_model.dart';/// A provider class for the EditFormScreen.
///
/// This provider manages the state of the EditFormScreen, including the
/// current editFormModelObj

// ignore_for_file: must_be_immutable
class EditFormProvider extends ChangeNotifier {TextEditingController formPasswordController = TextEditingController();

EditFormModel editFormModelObj = EditFormModel();

@override void dispose() { super.dispose(); formPasswordController.dispose(); } 
void onSelectedChipView1(int index, bool value, ) { editFormModelObj.layout15ItemList.forEach((element) {element.isSelected = false;}); editFormModelObj.layout15ItemList[index].isSelected = value; notifyListeners(); } 
void onSelectedChipView2(int index, bool value, ) { editFormModelObj.layout17ItemList.forEach((element) {element.isSelected = false;}); editFormModelObj.layout17ItemList[index].isSelected = value; notifyListeners(); } 
void onSelectedChipView3(int index, bool value, ) { editFormModelObj.layout19ItemList.forEach((element) {element.isSelected = false;}); editFormModelObj.layout19ItemList[index].isSelected = value; notifyListeners(); } 
void onSelectedChipView4(int index, bool value, ) { editFormModelObj.layout22ItemList.forEach((element) {element.isSelected = false;}); editFormModelObj.layout22ItemList[index].isSelected = value; notifyListeners(); } 
void onSelectedChipView5(int index, bool value, ) { editFormModelObj.seventyItemList.forEach((element) {element.isSelected = false;}); editFormModelObj.seventyItemList[index].isSelected = value; notifyListeners(); } 
 }
