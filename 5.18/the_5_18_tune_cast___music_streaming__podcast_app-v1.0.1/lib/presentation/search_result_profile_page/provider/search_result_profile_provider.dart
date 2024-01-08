import 'package:flutter/material.dart';import 'package:the_5_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';import 'package:the_5_18_tune_cast___music_streaming__podcast_app/presentation/search_result_profile_page/models/search_result_profile_model.dart';import '../models/fortyfive_item_model.dart';import '../models/following_item_model.dart';/// A provider class for the SearchResultProfilePage.
///
/// This provider manages the state of the SearchResultProfilePage, including the
/// current searchResultProfileModelObj

// ignore_for_file: must_be_immutable
class SearchResultProfileProvider extends ChangeNotifier {SearchResultProfileModel searchResultProfileModelObj = SearchResultProfileModel();

@override void dispose() { super.dispose(); } 
 }
