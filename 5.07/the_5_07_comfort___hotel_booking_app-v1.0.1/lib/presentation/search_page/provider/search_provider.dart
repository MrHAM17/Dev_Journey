import 'package:flutter/material.dart';import 'package:the_5_07_comfort___hotel_booking_app/core/app_export.dart';import 'package:the_5_07_comfort___hotel_booking_app/presentation/search_page/models/search_model.dart';import '../models/searchpage_item_model.dart';/// A provider class for the SearchPage.
///
/// This provider manages the state of the SearchPage, including the
/// current searchModelObj

// ignore_for_file: must_be_immutable
class SearchProvider extends ChangeNotifier {SearchModel searchModelObj = SearchModel();

@override void dispose() { super.dispose(); } 
 }
