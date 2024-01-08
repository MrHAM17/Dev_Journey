import 'package:flutter/material.dart';import 'package:the_5_17_housit___buyrentsell_property/core/app_export.dart';import 'package:the_5_17_housit___buyrentsell_property/presentation/filter_choose_location_screen/models/filter_choose_location_model.dart';/// A provider class for the FilterChooseLocationScreen.
///
/// This provider manages the state of the FilterChooseLocationScreen, including the
/// current filterChooseLocationModelObj

// ignore_for_file: must_be_immutable
class FilterChooseLocationProvider extends ChangeNotifier {FilterChooseLocationModel filterChooseLocationModelObj = FilterChooseLocationModel();

@override void dispose() { super.dispose(); } 
 }
