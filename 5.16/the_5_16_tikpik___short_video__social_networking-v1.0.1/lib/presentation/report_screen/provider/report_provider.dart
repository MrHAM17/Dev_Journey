import 'package:flutter/material.dart';import 'package:the_5_16_tikpik___short_video__social_networking/core/app_export.dart';import 'package:the_5_16_tikpik___short_video__social_networking/presentation/report_screen/models/report_model.dart';/// A provider class for the ReportScreen.
///
/// This provider manages the state of the ReportScreen, including the
/// current reportModelObj

// ignore_for_file: must_be_immutable
class ReportProvider extends ChangeNotifier {ReportModel reportModelObj = ReportModel();

String selectAReason = "";

@override void dispose() { super.dispose(); } 
void changeRadioButton1(String value) { selectAReason = value; notifyListeners(); } 
 }
