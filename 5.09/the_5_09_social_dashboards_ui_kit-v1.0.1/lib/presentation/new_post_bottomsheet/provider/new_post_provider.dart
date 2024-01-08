import 'package:flutter/material.dart';
import 'package:the_5_09_social_dashboards_ui_kit/core/app_export.dart';
import 'package:the_5_09_social_dashboards_ui_kit/presentation/new_post_bottomsheet/models/new_post_model.dart';

/// A provider class for the NewPostBottomsheet.
///
/// This provider manages the state of the NewPostBottomsheet, including the
/// current newPostModelObj

// ignore_for_file: must_be_immutable
class NewPostProvider extends ChangeNotifier {
  NewPostModel newPostModelObj = NewPostModel();

  @override
  void dispose() {
    super.dispose();
  }
}
