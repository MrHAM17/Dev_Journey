import 'package:flutter/material.dart';
import 'package:the_5_09_social_dashboards_ui_kit/core/app_export.dart';
import 'package:the_5_09_social_dashboards_ui_kit/presentation/search_page/models/search_model.dart';
import '../models/search_item_model.dart';

/// A provider class for the SearchPage.
///
/// This provider manages the state of the SearchPage, including the
/// current searchModelObj

// ignore_for_file: must_be_immutable
class SearchProvider extends ChangeNotifier {
  SearchModel searchModelObj = SearchModel();

  @override
  void dispose() {
    super.dispose();
  }
}
