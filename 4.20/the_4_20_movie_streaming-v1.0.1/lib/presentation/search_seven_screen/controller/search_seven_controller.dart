import 'package:the_4_20_movie_streaming/core/app_export.dart';
import 'package:the_4_20_movie_streaming/presentation/search_seven_screen/models/search_seven_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the SearchSevenScreen.
///
/// This class manages the state of the SearchSevenScreen, including the
/// current searchSevenModelObj
class SearchSevenController extends GetxController {
  TextEditingController searchController = TextEditingController();

  Rx<SearchSevenModel> searchSevenModelObj = SearchSevenModel().obs;

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
