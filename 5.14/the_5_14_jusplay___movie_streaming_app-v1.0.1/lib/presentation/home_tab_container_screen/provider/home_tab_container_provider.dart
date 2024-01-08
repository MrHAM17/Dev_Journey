import 'package:flutter/material.dart';
import 'package:the_5_14_jusplay___movie_streaming_app/core/app_export.dart';
import 'package:the_5_14_jusplay___movie_streaming_app/presentation/home_tab_container_screen/models/home_tab_container_model.dart';
import '../models/widget_item_model.dart';

/// A provider class for the HomeTabContainerScreen.
///
/// This provider manages the state of the HomeTabContainerScreen, including the
/// current homeTabContainerModelObj

// ignore_for_file: must_be_immutable
class HomeTabContainerProvider extends ChangeNotifier {
  HomeTabContainerModel homeTabContainerModelObj = HomeTabContainerModel();

  int sliderIndex = 0;

  @override
  void dispose() {
    super.dispose();
  }
}
