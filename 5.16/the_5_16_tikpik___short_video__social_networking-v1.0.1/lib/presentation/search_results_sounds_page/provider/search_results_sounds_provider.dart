import 'package:flutter/material.dart';import 'package:the_5_16_tikpik___short_video__social_networking/core/app_export.dart';import 'package:the_5_16_tikpik___short_video__social_networking/presentation/search_results_sounds_page/models/search_results_sounds_model.dart';import '../models/searchresultssounds_item_model.dart';/// A provider class for the SearchResultsSoundsPage.
///
/// This provider manages the state of the SearchResultsSoundsPage, including the
/// current searchResultsSoundsModelObj

// ignore_for_file: must_be_immutable
class SearchResultsSoundsProvider extends ChangeNotifier {SearchResultsSoundsModel searchResultsSoundsModelObj = SearchResultsSoundsModel();

@override void dispose() { super.dispose(); } 
 }
