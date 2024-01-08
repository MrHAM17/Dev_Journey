import 'package:flutter/material.dart';import 'package:the_5_17_housit___buyrentsell_property/core/app_export.dart';import 'package:the_5_17_housit___buyrentsell_property/presentation/form_detail_screen/models/form_detail_model.dart';import '../models/layout2_item_model.dart';import '../models/layout4_item_model.dart';/// A provider class for the FormDetailScreen.
///
/// This provider manages the state of the FormDetailScreen, including the
/// current formDetailModelObj

// ignore_for_file: must_be_immutable
class FormDetailProvider extends ChangeNotifier {TextEditingController formPasswordController = TextEditingController();

FormDetailModel formDetailModelObj = FormDetailModel();

@override void dispose() { super.dispose(); formPasswordController.dispose(); } 
void onSelectedChipView1(int index, bool value, ) { formDetailModelObj.layout2ItemList.forEach((element) {element.isSelected = false;}); formDetailModelObj.layout2ItemList[index].isSelected = value; notifyListeners(); } 
void onSelectedChipView2(int index, bool value, ) { formDetailModelObj.layout4ItemList.forEach((element) {element.isSelected = false;}); formDetailModelObj.layout4ItemList[index].isSelected = value; notifyListeners(); } 
 }
