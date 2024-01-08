import 'package:flutter/material.dart';import 'package:the_5_17_housit___buyrentsell_property/core/app_export.dart';import 'package:the_5_17_housit___buyrentsell_property/presentation/preferable_screen/models/preferable_model.dart';import '../models/preferable_item_model.dart';/// A provider class for the PreferableScreen.
///
/// This provider manages the state of the PreferableScreen, including the
/// current preferableModelObj

// ignore_for_file: must_be_immutable
class PreferableProvider extends ChangeNotifier {PreferableModel preferableModelObj = PreferableModel();

@override void dispose() { super.dispose(); } 
 }
