import 'package:flutter/material.dart';
import 'package:the_5_12_street_style___e_commerce_app/core/app_export.dart';
import 'package:the_5_12_street_style___e_commerce_app/presentation/discover_screen/models/discover_model.dart';
import '../models/discover_item_model.dart';

/// A provider class for the DiscoverScreen.
///
/// This provider manages the state of the DiscoverScreen, including the
/// current discoverModelObj

// ignore_for_file: must_be_immutable
class DiscoverProvider extends ChangeNotifier {
  DiscoverModel discoverModelObj = DiscoverModel();

  @override
  void dispose() {
    super.dispose();
  }
}
