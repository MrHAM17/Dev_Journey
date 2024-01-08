import 'package:flutter/material.dart';import 'package:the_5_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';import 'package:the_5_18_tune_cast___music_streaming__podcast_app/presentation/search_result_top_page/models/search_result_top_model.dart';import '../models/follow_item_model.dart';import '../models/teenagedream_item_model.dart';/// A provider class for the SearchResultTopPage.
///
/// This provider manages the state of the SearchResultTopPage, including the
/// current searchResultTopModelObj

// ignore_for_file: must_be_immutable
class SearchResultTopProvider extends ChangeNotifier {SearchResultTopModel searchResultTopModelObj = SearchResultTopModel();

@override void dispose() { super.dispose(); } 
 }
