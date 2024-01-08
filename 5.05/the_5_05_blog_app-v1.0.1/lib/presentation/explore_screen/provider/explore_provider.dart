import 'package:flutter/material.dart';
import 'package:the_5_05_blog_app/core/app_export.dart';
import 'package:the_5_05_blog_app/presentation/explore_screen/models/explore_model.dart';
import '../models/stories1_item_model.dart';

/// A provider class for the ExploreScreen.
///
/// This provider manages the state of the ExploreScreen, including the
/// current exploreModelObj

// ignore_for_file: must_be_immutable
class ExploreProvider extends ChangeNotifier {
  TextEditingController searchController = TextEditingController();

  ExploreModel exploreModelObj = ExploreModel();

  @override
  void dispose() {
    super.dispose();
    searchController.dispose();
  }
}
