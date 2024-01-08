import 'package:flutter/material.dart';
import 'package:the_5_09_social_dashboards_ui_kit/core/app_export.dart';
import 'package:the_5_09_social_dashboards_ui_kit/presentation/single_post_bottomsheet/models/single_post_model.dart';

/// A provider class for the SinglePostBottomsheet.
///
/// This provider manages the state of the SinglePostBottomsheet, including the
/// current singlePostModelObj
class SinglePostProvider extends ChangeNotifier {
  SinglePostModel singlePostModelObj = SinglePostModel();

  @override
  void dispose() {
    super.dispose();
  }
}
