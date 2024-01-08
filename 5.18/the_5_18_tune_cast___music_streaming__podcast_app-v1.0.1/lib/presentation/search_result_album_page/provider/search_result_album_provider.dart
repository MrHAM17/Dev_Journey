import 'package:flutter/material.dart';import 'package:the_5_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';import 'package:the_5_18_tune_cast___music_streaming__podcast_app/presentation/search_result_album_page/models/search_result_album_model.dart';import '../models/searchresultalbum_item_model.dart';/// A provider class for the SearchResultAlbumPage.
///
/// This provider manages the state of the SearchResultAlbumPage, including the
/// current searchResultAlbumModelObj

// ignore_for_file: must_be_immutable
class SearchResultAlbumProvider extends ChangeNotifier {SearchResultAlbumModel searchResultAlbumModelObj = SearchResultAlbumModel();

@override void dispose() { super.dispose(); } 
 }
