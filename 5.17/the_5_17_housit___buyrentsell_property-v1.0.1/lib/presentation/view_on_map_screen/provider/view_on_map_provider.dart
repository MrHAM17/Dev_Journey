import 'package:flutter/material.dart';import 'package:the_5_17_housit___buyrentsell_property/core/app_export.dart';import 'package:the_5_17_housit___buyrentsell_property/presentation/view_on_map_screen/models/view_on_map_model.dart';/// A provider class for the ViewOnMapScreen.
///
/// This provider manages the state of the ViewOnMapScreen, including the
/// current viewOnMapModelObj

// ignore_for_file: must_be_immutable
class ViewOnMapProvider extends ChangeNotifier {ViewOnMapModel viewOnMapModelObj = ViewOnMapModel();

@override void dispose() { super.dispose(); } 
 }
