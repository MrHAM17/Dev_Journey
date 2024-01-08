import 'package:flutter/material.dart';import 'package:the_5_17_housit___buyrentsell_property/core/app_export.dart';import 'package:the_5_17_housit___buyrentsell_property/presentation/view_screen/models/view_model.dart';/// A provider class for the ViewScreen.
///
/// This provider manages the state of the ViewScreen, including the
/// current viewModelObj

// ignore_for_file: must_be_immutable
class ViewProvider extends ChangeNotifier {ViewModel viewModelObj = ViewModel();

@override void dispose() { super.dispose(); } 
 }
