import 'package:the_4_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';
import 'package:the_4_18_tune_cast___music_streaming__podcast_app/presentation/search_not_found_tab_container_screen/models/search_not_found_tab_container_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the SearchNotFoundTabContainerScreen.
///
/// This class manages the state of the SearchNotFoundTabContainerScreen, including the
/// current searchNotFoundTabContainerModelObj
class SearchNotFoundTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  TextEditingController searchController = TextEditingController();

  Rx<SearchNotFoundTabContainerModel> searchNotFoundTabContainerModelObj =
      SearchNotFoundTabContainerModel().obs;

  late TabController tabviewController =
      Get.put(TabController(vsync: this, length: 9));

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
