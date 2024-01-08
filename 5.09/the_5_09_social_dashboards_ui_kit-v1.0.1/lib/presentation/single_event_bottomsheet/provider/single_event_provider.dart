import 'package:flutter/material.dart';
import 'package:the_5_09_social_dashboards_ui_kit/core/app_export.dart';
import 'package:the_5_09_social_dashboards_ui_kit/presentation/single_event_bottomsheet/models/single_event_model.dart';

/// A provider class for the SingleEventBottomsheet.
///
/// This provider manages the state of the SingleEventBottomsheet, including the
/// current singleEventModelObj
class SingleEventProvider extends ChangeNotifier {
  SingleEventModel singleEventModelObj = SingleEventModel();

  @override
  void dispose() {
    super.dispose();
  }
}
