import 'package:flutter/material.dart';
import 'package:the_5_20_movie_streaming/core/app_export.dart';
import 'package:the_5_20_movie_streaming/presentation/explore_eight_page/models/explore_eight_model.dart';
import '../models/specials7_item_model.dart';
import '../models/exploreeight_item_model.dart';

/// A provider class for the ExploreEightPage.
///
/// This provider manages the state of the ExploreEightPage, including the
/// current exploreEightModelObj

// ignore_for_file: must_be_immutable
class ExploreEightProvider extends ChangeNotifier {
  ExploreEightModel exploreEightModelObj = ExploreEightModel();

  @override
  void dispose() {
    super.dispose();
  }
}
