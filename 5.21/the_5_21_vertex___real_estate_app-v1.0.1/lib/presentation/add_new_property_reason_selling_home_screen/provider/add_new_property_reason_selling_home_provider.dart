import 'package:flutter/material.dart';import 'package:the_5_21_vertex___real_estate_app/core/app_export.dart';import 'package:the_5_21_vertex___real_estate_app/presentation/add_new_property_reason_selling_home_screen/models/add_new_property_reason_selling_home_model.dart';import '../models/addnewpropertyreasonsellinghom_item_model.dart';/// A provider class for the AddNewPropertyReasonSellingHomeScreen.
///
/// This provider manages the state of the AddNewPropertyReasonSellingHomeScreen, including the
/// current addNewPropertyReasonSellingHomeModelObj

// ignore_for_file: must_be_immutable
class AddNewPropertyReasonSellingHomeProvider extends ChangeNotifier {AddNewPropertyReasonSellingHomeModel addNewPropertyReasonSellingHomeModelObj = AddNewPropertyReasonSellingHomeModel();

bool other = false;

@override void dispose() { super.dispose(); } 
void changeCheckBox1(bool value) { other = value; notifyListeners(); } 
 }
