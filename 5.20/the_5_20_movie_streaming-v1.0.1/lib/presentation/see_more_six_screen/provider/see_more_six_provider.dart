import 'package:flutter/material.dart';
import 'package:the_5_20_movie_streaming/core/app_export.dart';
import 'package:the_5_20_movie_streaming/presentation/see_more_six_screen/models/see_more_six_model.dart';
import '../models/seemoresix_item_model.dart';

/// A provider class for the SeeMoreSixScreen.
///
/// This provider manages the state of the SeeMoreSixScreen, including the
/// current seeMoreSixModelObj

// ignore_for_file: must_be_immutable
class SeeMoreSixProvider extends ChangeNotifier {
  SeeMoreSixModel seeMoreSixModelObj = SeeMoreSixModel();

  @override
  void dispose() {
    super.dispose();
  }
}
