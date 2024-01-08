import 'package:flutter/material.dart';
import 'package:the_5_05_blog_app/core/app_export.dart';
import 'package:the_5_05_blog_app/presentation/search_topics_screen/models/search_topics_model.dart';

/// A provider class for the SearchTopicsScreen.
///
/// This provider manages the state of the SearchTopicsScreen, including the
/// current searchTopicsModelObj

// ignore_for_file: must_be_immutable
class SearchTopicsProvider extends ChangeNotifier {
  TextEditingController searchController = TextEditingController();

  SearchTopicsModel searchTopicsModelObj = SearchTopicsModel();

  @override
  void dispose() {
    super.dispose();
    searchController.dispose();
  }
}
