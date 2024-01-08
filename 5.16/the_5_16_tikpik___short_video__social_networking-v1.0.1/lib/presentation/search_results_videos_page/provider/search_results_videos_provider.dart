import 'package:flutter/material.dart';import 'package:the_5_16_tikpik___short_video__social_networking/core/app_export.dart';import 'package:the_5_16_tikpik___short_video__social_networking/presentation/search_results_videos_page/models/search_results_videos_model.dart';import '../models/searchresultsvideos_item_model.dart';/// A provider class for the SearchResultsVideosPage.
///
/// This provider manages the state of the SearchResultsVideosPage, including the
/// current searchResultsVideosModelObj

// ignore_for_file: must_be_immutable
class SearchResultsVideosProvider extends ChangeNotifier {SearchResultsVideosModel searchResultsVideosModelObj = SearchResultsVideosModel();

@override void dispose() { super.dispose(); } 
void changeRadioButton1(int index, String value, ) { searchResultsVideosModelObj.searchresultsvideosItemList[index].radioGroup = value;notifyListeners(); } 
 }
