import 'package:flutter/material.dart';
import 'package:the_5_16_tikpik___short_video__social_networking/core/app_export.dart';
import 'package:the_5_16_tikpik___short_video__social_networking/presentation/trending_sounds_tab_container_page/models/trending_sounds_tab_container_model.dart';

/// A provider class for the TrendingSoundsTabContainerPage.
///
/// This provider manages the state of the TrendingSoundsTabContainerPage, including the
/// current trendingSoundsTabContainerModelObj
class TrendingSoundsTabContainerProvider extends ChangeNotifier {
  TrendingSoundsTabContainerModel trendingSoundsTabContainerModelObj =
      TrendingSoundsTabContainerModel();

  @override
  void dispose() {
    super.dispose();
  }
}
