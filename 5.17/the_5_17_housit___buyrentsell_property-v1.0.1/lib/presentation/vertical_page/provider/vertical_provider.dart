import 'package:flutter/material.dart';import 'package:the_5_17_housit___buyrentsell_property/core/app_export.dart';import 'package:the_5_17_housit___buyrentsell_property/presentation/vertical_page/models/vertical_model.dart';import '../models/vertical_item_model.dart';/// A provider class for the VerticalPage.
///
/// This provider manages the state of the VerticalPage, including the
/// current verticalModelObj

// ignore_for_file: must_be_immutable
class VerticalProvider extends ChangeNotifier {VerticalModel verticalModelObj = VerticalModel();

@override void dispose() { super.dispose(); } 
 }
