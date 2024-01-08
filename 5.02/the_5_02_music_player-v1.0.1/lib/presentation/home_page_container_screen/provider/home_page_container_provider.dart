import 'package:flutter/material.dart';
import 'package:the_5_02_music_player/core/app_export.dart';
import 'package:the_5_02_music_player/presentation/home_page_container_screen/models/home_page_container_model.dart';

/// A provider class for the HomePageContainerScreen.
///
/// This provider manages the state of the HomePageContainerScreen, including the
/// current homePageContainerModelObj

// ignore_for_file: must_be_immutable
class HomePageContainerProvider extends ChangeNotifier {
  HomePageContainerModel homePageContainerModelObj = HomePageContainerModel();

  @override
  void dispose() {
    super.dispose();
  }
}
