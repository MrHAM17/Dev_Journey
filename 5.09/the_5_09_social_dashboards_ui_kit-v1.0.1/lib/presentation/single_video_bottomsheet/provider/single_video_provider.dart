import 'package:flutter/material.dart';
import 'package:the_5_09_social_dashboards_ui_kit/core/app_export.dart';
import 'package:the_5_09_social_dashboards_ui_kit/presentation/single_video_bottomsheet/models/single_video_model.dart';
import '../models/tags_item_model.dart';

/// A provider class for the SingleVideoBottomsheet.
///
/// This provider manages the state of the SingleVideoBottomsheet, including the
/// current singleVideoModelObj

// ignore_for_file: must_be_immutable
class SingleVideoProvider extends ChangeNotifier {
  SingleVideoModel singleVideoModelObj = SingleVideoModel();

  @override
  void dispose() {
    super.dispose();
  }

  void onSelectedChipView1(
    int index,
    bool value,
  ) {
    singleVideoModelObj.tagsItemList.forEach((element) {
      element.isSelected = false;
    });
    singleVideoModelObj.tagsItemList[index].isSelected = value;
    notifyListeners();
  }
}
