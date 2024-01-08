import 'package:flutter/material.dart';
import 'package:the_5_16_tikpik___short_video__social_networking/core/app_export.dart';
import 'package:the_5_16_tikpik___short_video__social_networking/presentation/profile_one_bottomsheet/models/profile_one_model.dart';

/// A provider class for the ProfileOneBottomsheet.
///
/// This provider manages the state of the ProfileOneBottomsheet, including the
/// current profileOneModelObj
class ProfileOneProvider extends ChangeNotifier {
  ProfileOneModel profileOneModelObj = ProfileOneModel();

  @override
  void dispose() {
    super.dispose();
  }
}
