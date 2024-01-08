import 'package:flutter/material.dart';import 'package:the_5_17_housit___buyrentsell_property/core/app_export.dart';import 'package:the_5_17_housit___buyrentsell_property/presentation/history_detail_screen/models/history_detail_model.dart';/// A provider class for the HistoryDetailScreen.
///
/// This provider manages the state of the HistoryDetailScreen, including the
/// current historyDetailModelObj

// ignore_for_file: must_be_immutable
class HistoryDetailProvider extends ChangeNotifier {HistoryDetailModel historyDetailModelObj = HistoryDetailModel();

@override void dispose() { super.dispose(); } 
 }
