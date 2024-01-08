import 'package:the_4_05_blog_app/core/app_export.dart';
import 'package:the_4_05_blog_app/presentation/search_topics_screen/models/search_topics_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the SearchTopicsScreen.
///
/// This class manages the state of the SearchTopicsScreen, including the
/// current searchTopicsModelObj
class SearchTopicsController extends GetxController {
  TextEditingController searchController = TextEditingController();

  Rx<SearchTopicsModel> searchTopicsModelObj = SearchTopicsModel().obs;

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
