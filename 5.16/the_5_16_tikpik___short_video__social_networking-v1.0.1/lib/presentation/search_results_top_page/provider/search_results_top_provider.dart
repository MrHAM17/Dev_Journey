import 'package:flutter/material.dart';import 'package:the_5_16_tikpik___short_video__social_networking/core/app_export.dart';import 'package:the_5_16_tikpik___short_video__social_networking/presentation/search_results_top_page/models/search_results_top_model.dart';import '../models/follow_item_model.dart';import '../models/autolayouthorizontal_item_model.dart';/// A provider class for the SearchResultsTopPage.
///
/// This provider manages the state of the SearchResultsTopPage, including the
/// current searchResultsTopModelObj

// ignore_for_file: must_be_immutable
class SearchResultsTopProvider extends ChangeNotifier {SearchResultsTopModel searchResultsTopModelObj = SearchResultsTopModel();

@override void dispose() { super.dispose(); } 
 }
