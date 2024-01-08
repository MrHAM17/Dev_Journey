import 'package:flutter/material.dart';import 'package:the_5_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';import 'package:the_5_18_tune_cast___music_streaming__podcast_app/presentation/search_results_songs_page/models/search_results_songs_model.dart';import '../models/searchresultssongs_item_model.dart';/// A provider class for the SearchResultsSongsPage.
///
/// This provider manages the state of the SearchResultsSongsPage, including the
/// current searchResultsSongsModelObj

// ignore_for_file: must_be_immutable
class SearchResultsSongsProvider extends ChangeNotifier {SearchResultsSongsModel searchResultsSongsModelObj = SearchResultsSongsModel();

@override void dispose() { super.dispose(); } 
 }
