import 'package:flutter/material.dart';import 'package:the_5_16_tikpik___short_video__social_networking/core/app_export.dart';import 'package:the_5_16_tikpik___short_video__social_networking/presentation/all_activity_page/models/all_activity_model.dart';import '../models/followback_item_model.dart';import '../models/followback1_item_model.dart';/// A provider class for the AllActivityPage.
///
/// This provider manages the state of the AllActivityPage, including the
/// current allActivityModelObj

// ignore_for_file: must_be_immutable
class AllActivityProvider extends ChangeNotifier {AllActivityModel allActivityModelObj = AllActivityModel();

@override void dispose() { super.dispose(); } 
onSelected(dynamic value) { for (var element in allActivityModelObj.dropdownItemList) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} notifyListeners(); } 
 }
