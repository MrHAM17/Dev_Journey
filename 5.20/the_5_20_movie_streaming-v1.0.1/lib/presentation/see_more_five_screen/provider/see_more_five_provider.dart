import 'package:flutter/material.dart';
import 'package:the_5_20_movie_streaming/core/app_export.dart';
import 'package:the_5_20_movie_streaming/presentation/see_more_five_screen/models/see_more_five_model.dart';
import '../models/seemorefive_item_model.dart';

/// A provider class for the SeeMoreFiveScreen.
///
/// This provider manages the state of the SeeMoreFiveScreen, including the
/// current seeMoreFiveModelObj

// ignore_for_file: must_be_immutable
class SeeMoreFiveProvider extends ChangeNotifier {
  SeeMoreFiveModel seeMoreFiveModelObj = SeeMoreFiveModel();

  @override
  void dispose() {
    super.dispose();
  }
}
