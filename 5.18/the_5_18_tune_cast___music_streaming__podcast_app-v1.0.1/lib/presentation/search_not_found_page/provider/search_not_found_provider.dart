import 'package:flutter/material.dart';
import 'package:the_5_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';
import 'package:the_5_18_tune_cast___music_streaming__podcast_app/presentation/search_not_found_page/models/search_not_found_model.dart';

/// A provider class for the SearchNotFoundPage.
///
/// This provider manages the state of the SearchNotFoundPage, including the
/// current searchNotFoundModelObj
class SearchNotFoundProvider extends ChangeNotifier {
  SearchNotFoundModel searchNotFoundModelObj = SearchNotFoundModel();

  @override
  void dispose() {
    super.dispose();
  }
}
