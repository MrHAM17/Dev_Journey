import 'package:flutter/material.dart';
import 'package:the_5_09_social_dashboards_ui_kit/core/app_export.dart';
import 'package:the_5_09_social_dashboards_ui_kit/presentation/search_tab_container_screen/models/search_tab_container_model.dart';

/// A provider class for the SearchTabContainerScreen.
///
/// This provider manages the state of the SearchTabContainerScreen, including the
/// current searchTabContainerModelObj

// ignore_for_file: must_be_immutable
class SearchTabContainerProvider extends ChangeNotifier {
  TextEditingController searchController = TextEditingController();

  SearchTabContainerModel searchTabContainerModelObj =
      SearchTabContainerModel();

  @override
  void dispose() {
    super.dispose();
    searchController.dispose();
  }
}
