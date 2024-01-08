import 'package:the_4_07_comfort___hotel_booking_app/core/app_export.dart';
import 'package:the_4_07_comfort___hotel_booking_app/presentation/search_type_tab_container_screen/models/search_type_tab_container_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the SearchTypeTabContainerScreen.
///
/// This class manages the state of the SearchTypeTabContainerScreen, including the
/// current searchTypeTabContainerModelObj
class SearchTypeTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  TextEditingController searchController = TextEditingController();

  Rx<SearchTypeTabContainerModel> searchTypeTabContainerModelObj =
      SearchTypeTabContainerModel().obs;

  late TabController tabviewController =
      Get.put(TabController(vsync: this, length: 3));

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
