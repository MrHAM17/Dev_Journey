import 'package:flutter/material.dart';import 'package:the_5_21_vertex___real_estate_app/core/app_export.dart';import 'package:the_5_21_vertex___real_estate_app/presentation/add_new_property_select_amenities_screen/models/add_new_property_select_amenities_model.dart';import '../models/options_item_model.dart';/// A provider class for the AddNewPropertySelectAmenitiesScreen.
///
/// This provider manages the state of the AddNewPropertySelectAmenitiesScreen, including the
/// current addNewPropertySelectAmenitiesModelObj

// ignore_for_file: must_be_immutable
class AddNewPropertySelectAmenitiesProvider extends ChangeNotifier {AddNewPropertySelectAmenitiesModel addNewPropertySelectAmenitiesModelObj = AddNewPropertySelectAmenitiesModel();

@override void dispose() { super.dispose(); } 
void onSelectedChipView1(int index, bool value, ) { addNewPropertySelectAmenitiesModelObj.optionsItemList.forEach((element) {element.isSelected = false;}); addNewPropertySelectAmenitiesModelObj.optionsItemList[index].isSelected = value; notifyListeners(); } 
 }
