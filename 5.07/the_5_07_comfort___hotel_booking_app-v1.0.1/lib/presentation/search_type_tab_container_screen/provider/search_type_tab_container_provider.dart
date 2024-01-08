import 'package:flutter/material.dart';
import 'package:the_5_07_comfort___hotel_booking_app/core/app_export.dart';
import 'package:the_5_07_comfort___hotel_booking_app/presentation/search_type_tab_container_screen/models/search_type_tab_container_model.dart';

/// A provider class for the SearchTypeTabContainerScreen.
///
/// This provider manages the state of the SearchTypeTabContainerScreen, including the
/// current searchTypeTabContainerModelObj
class SearchTypeTabContainerProvider extends ChangeNotifier {
  TextEditingController searchController = TextEditingController();

  SearchTypeTabContainerModel searchTypeTabContainerModelObj =
      SearchTypeTabContainerModel();

  @override
  void dispose() {
    super.dispose();
    searchController.dispose();
  }
}
