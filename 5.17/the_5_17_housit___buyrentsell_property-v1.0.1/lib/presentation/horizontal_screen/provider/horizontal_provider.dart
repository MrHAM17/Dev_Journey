import 'package:flutter/material.dart';import 'package:the_5_17_housit___buyrentsell_property/core/app_export.dart';import 'package:the_5_17_housit___buyrentsell_property/presentation/horizontal_screen/models/horizontal_model.dart';import '../models/horizontal_item_model.dart';/// A provider class for the HorizontalScreen.
///
/// This provider manages the state of the HorizontalScreen, including the
/// current horizontalModelObj

// ignore_for_file: must_be_immutable
class HorizontalProvider extends ChangeNotifier {HorizontalModel horizontalModelObj = HorizontalModel();

@override void dispose() { super.dispose(); } 
 }
