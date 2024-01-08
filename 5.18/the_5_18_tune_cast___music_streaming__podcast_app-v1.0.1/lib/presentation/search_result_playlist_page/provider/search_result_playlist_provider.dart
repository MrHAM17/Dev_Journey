import 'package:flutter/material.dart';import 'package:the_5_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';import 'package:the_5_18_tune_cast___music_streaming__podcast_app/presentation/search_result_playlist_page/models/search_result_playlist_model.dart';import '../models/searchresultplaylist_item_model.dart';/// A provider class for the SearchResultPlaylistPage.
///
/// This provider manages the state of the SearchResultPlaylistPage, including the
/// current searchResultPlaylistModelObj

// ignore_for_file: must_be_immutable
class SearchResultPlaylistProvider extends ChangeNotifier {SearchResultPlaylistModel searchResultPlaylistModelObj = SearchResultPlaylistModel();

@override void dispose() { super.dispose(); } 
 }
