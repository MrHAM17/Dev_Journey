import 'package:flutter/material.dart';
import 'package:the_5_10_social___social_networking/core/app_export.dart';
import 'package:the_5_10_social___social_networking/presentation/stories_page/models/stories_model.dart';
import '../models/stories1_item_model.dart';
import '../models/frame_item_model.dart';

/// A provider class for the StoriesPage.
///
/// This provider manages the state of the StoriesPage, including the
/// current storiesModelObj

// ignore_for_file: must_be_immutable
class StoriesProvider extends ChangeNotifier {
  TextEditingController searchController = TextEditingController();

  StoriesModel storiesModelObj = StoriesModel();

  @override
  void dispose() {
    super.dispose();
    searchController.dispose();
  }
}
