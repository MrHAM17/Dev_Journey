import 'package:the_4_16_tikpik___short_video__social_networking/core/app_export.dart';
import 'package:the_4_16_tikpik___short_video__social_networking/presentation/search_results_users_tab_container_screen/models/search_results_users_tab_container_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the SearchResultsUsersTabContainerScreen.
///
/// This class manages the state of the SearchResultsUsersTabContainerScreen, including the
/// current searchResultsUsersTabContainerModelObj
class SearchResultsUsersTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  TextEditingController searchController = TextEditingController();

  Rx<SearchResultsUsersTabContainerModel>
      searchResultsUsersTabContainerModelObj =
      SearchResultsUsersTabContainerModel().obs;

  late TabController tabviewController =
      Get.put(TabController(vsync: this, length: 4));

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
