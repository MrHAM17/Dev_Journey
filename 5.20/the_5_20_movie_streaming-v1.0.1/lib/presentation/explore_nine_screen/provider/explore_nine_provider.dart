import 'package:flutter/material.dart';
import 'package:the_5_20_movie_streaming/core/app_export.dart';
import 'package:the_5_20_movie_streaming/presentation/explore_nine_screen/models/explore_nine_model.dart';
import '../models/specials8_item_model.dart';
import '../models/explorenine_item_model.dart';

/// A provider class for the ExploreNineScreen.
///
/// This provider manages the state of the ExploreNineScreen, including the
/// current exploreNineModelObj

// ignore_for_file: must_be_immutable
class ExploreNineProvider extends ChangeNotifier {
  TextEditingController searchController = TextEditingController();

  ExploreNineModel exploreNineModelObj = ExploreNineModel();

  @override
  void dispose() {
    super.dispose();
    searchController.dispose();
  }
}
