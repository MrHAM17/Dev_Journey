import 'package:the_4_14_jusplay___movie_streaming_app/core/app_export.dart';
import 'package:the_4_14_jusplay___movie_streaming_app/presentation/search_page/models/search_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the SearchPage.
///
/// This class manages the state of the SearchPage, including the
/// current searchModelObj
class SearchController extends GetxController {
  SearchController(this.searchModelObj);

  TextEditingController searchController = TextEditingController();

  Rx<SearchModel> searchModelObj;

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
