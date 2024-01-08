import 'package:flutter/material.dart';import 'package:the_5_17_housit___buyrentsell_property/core/app_export.dart';import 'package:the_5_17_housit___buyrentsell_property/presentation/search_result_screen/models/search_result_model.dart';import '../models/searchresult_item_model.dart';/// A provider class for the SearchResultScreen.
///
/// This provider manages the state of the SearchResultScreen, including the
/// current searchResultModelObj

// ignore_for_file: must_be_immutable
class SearchResultProvider extends ChangeNotifier {TextEditingController searchController = TextEditingController();

SearchResultModel searchResultModelObj = SearchResultModel();

@override void dispose() { super.dispose(); searchController.dispose(); } 
 }
