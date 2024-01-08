import 'package:the_4_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';
import 'package:the_4_18_tune_cast___music_streaming__podcast_app/presentation/search_result_profile_tab_container_screen/models/search_result_profile_tab_container_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the SearchResultProfileTabContainerScreen.
///
/// This class manages the state of the SearchResultProfileTabContainerScreen, including the
/// current searchResultProfileTabContainerModelObj
class SearchResultProfileTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  TextEditingController searchController = TextEditingController();

  Rx<SearchResultProfileTabContainerModel>
      searchResultProfileTabContainerModelObj =
      SearchResultProfileTabContainerModel().obs;

  late TabController tabviewController =
      Get.put(TabController(vsync: this, length: 6));

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
