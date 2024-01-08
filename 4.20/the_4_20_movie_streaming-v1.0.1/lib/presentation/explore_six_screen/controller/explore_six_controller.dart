import 'package:the_4_20_movie_streaming/core/app_export.dart';
import 'package:the_4_20_movie_streaming/presentation/explore_six_screen/models/explore_six_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the ExploreSixScreen.
///
/// This class manages the state of the ExploreSixScreen, including the
/// current exploreSixModelObj
class ExploreSixController extends GetxController {
  TextEditingController searchController = TextEditingController();

  Rx<ExploreSixModel> exploreSixModelObj = ExploreSixModel().obs;

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
