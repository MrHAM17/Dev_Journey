import 'package:flutter/material.dart';import 'package:the_5_17_housit___buyrentsell_property/core/app_export.dart';import 'package:the_5_17_housit___buyrentsell_property/presentation/add_location_screen/models/add_location_model.dart';/// A provider class for the AddLocationScreen.
///
/// This provider manages the state of the AddLocationScreen, including the
/// current addLocationModelObj

// ignore_for_file: must_be_immutable
class AddLocationProvider extends ChangeNotifier {AddLocationModel addLocationModelObj = AddLocationModel();

@override void dispose() { super.dispose(); } 
 }
