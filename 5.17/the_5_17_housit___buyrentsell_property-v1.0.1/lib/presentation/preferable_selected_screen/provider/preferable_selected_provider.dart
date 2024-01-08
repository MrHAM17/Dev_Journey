import 'package:flutter/material.dart';import 'package:the_5_17_housit___buyrentsell_property/core/app_export.dart';import 'package:the_5_17_housit___buyrentsell_property/presentation/preferable_selected_screen/models/preferable_selected_model.dart';import '../models/preferableselected_item_model.dart';/// A provider class for the PreferableSelectedScreen.
///
/// This provider manages the state of the PreferableSelectedScreen, including the
/// current preferableSelectedModelObj

// ignore_for_file: must_be_immutable
class PreferableSelectedProvider extends ChangeNotifier {PreferableSelectedModel preferableSelectedModelObj = PreferableSelectedModel();

@override void dispose() { super.dispose(); } 
 }
