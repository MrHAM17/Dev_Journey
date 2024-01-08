import 'package:flutter/material.dart';
import 'package:the_5_20_movie_streaming/core/app_export.dart';
import 'package:the_5_20_movie_streaming/presentation/explore_six_screen/models/explore_six_model.dart';
import '../models/exploresix_item_model.dart';

/// A provider class for the ExploreSixScreen.
///
/// This provider manages the state of the ExploreSixScreen, including the
/// current exploreSixModelObj

// ignore_for_file: must_be_immutable
class ExploreSixProvider extends ChangeNotifier {
  TextEditingController searchController = TextEditingController();

  ExploreSixModel exploreSixModelObj = ExploreSixModel();

  @override
  void dispose() {
    super.dispose();
    searchController.dispose();
  }
}
