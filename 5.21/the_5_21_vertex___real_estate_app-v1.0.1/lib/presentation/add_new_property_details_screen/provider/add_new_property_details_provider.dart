import 'package:flutter/material.dart';import 'package:the_5_21_vertex___real_estate_app/core/app_export.dart';import 'package:the_5_21_vertex___real_estate_app/presentation/add_new_property_details_screen/models/add_new_property_details_model.dart';import '../models/addnewpropertydetails_item_model.dart';/// A provider class for the AddNewPropertyDetailsScreen.
///
/// This provider manages the state of the AddNewPropertyDetailsScreen, including the
/// current addNewPropertyDetailsModelObj

// ignore_for_file: must_be_immutable
class AddNewPropertyDetailsProvider extends ChangeNotifier {AddNewPropertyDetailsModel addNewPropertyDetailsModelObj = AddNewPropertyDetailsModel();

@override void dispose() { super.dispose(); } 
 }
