import 'package:flutter/material.dart';import 'package:the_5_17_housit___buyrentsell_property/core/app_export.dart';import 'package:the_5_17_housit___buyrentsell_property/presentation/summary_screen/models/summary_model.dart';/// A provider class for the SummaryScreen.
///
/// This provider manages the state of the SummaryScreen, including the
/// current summaryModelObj

// ignore_for_file: must_be_immutable
class SummaryProvider extends ChangeNotifier {SummaryModel summaryModelObj = SummaryModel();

@override void dispose() { super.dispose(); } 
 }
