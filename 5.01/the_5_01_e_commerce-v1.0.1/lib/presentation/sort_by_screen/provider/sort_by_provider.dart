import 'package:flutter/material.dart';import 'package:the_5_01_e_commerce/core/app_export.dart';import 'package:the_5_01_e_commerce/presentation/sort_by_screen/models/sort_by_model.dart';/// A provider class for the SortByScreen.
///
/// This provider manages the state of the SortByScreen, including the
/// current sortByModelObj

// ignore_for_file: must_be_immutable
class SortByProvider extends ChangeNotifier {SortByModel sortByModelObj = SortByModel();

@override void dispose() { super.dispose(); } 
 }
