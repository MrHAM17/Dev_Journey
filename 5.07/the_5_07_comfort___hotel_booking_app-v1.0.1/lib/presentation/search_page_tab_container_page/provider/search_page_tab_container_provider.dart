import 'package:flutter/material.dart';
import 'package:the_5_07_comfort___hotel_booking_app/core/app_export.dart';
import 'package:the_5_07_comfort___hotel_booking_app/presentation/search_page_tab_container_page/models/search_page_tab_container_model.dart';

/// A provider class for the SearchPageTabContainerPage.
///
/// This provider manages the state of the SearchPageTabContainerPage, including the
/// current searchPageTabContainerModelObj
class SearchPageTabContainerProvider extends ChangeNotifier {
  TextEditingController searchController = TextEditingController();

  SearchPageTabContainerModel searchPageTabContainerModelObj =
      SearchPageTabContainerModel();

  @override
  void dispose() {
    super.dispose();
    searchController.dispose();
  }
}
