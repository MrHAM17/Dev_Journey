import 'package:flutter/material.dart';import 'package:the_5_07_comfort___hotel_booking_app/core/app_export.dart';import 'package:the_5_07_comfort___hotel_booking_app/presentation/filter_result_page/models/filter_result_model.dart';import '../models/filterresult_item_model.dart';/// A provider class for the FilterResultPage.
///
/// This provider manages the state of the FilterResultPage, including the
/// current filterResultModelObj

// ignore_for_file: must_be_immutable
class FilterResultProvider extends ChangeNotifier {FilterResultModel filterResultModelObj = FilterResultModel();

@override void dispose() { super.dispose(); } 
 }
