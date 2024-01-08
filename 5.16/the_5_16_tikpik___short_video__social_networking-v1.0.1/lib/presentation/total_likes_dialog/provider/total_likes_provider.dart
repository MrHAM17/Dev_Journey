import 'package:flutter/material.dart';
import 'package:the_5_16_tikpik___short_video__social_networking/core/app_export.dart';
import 'package:the_5_16_tikpik___short_video__social_networking/presentation/total_likes_dialog/models/total_likes_model.dart';

/// A provider class for the TotalLikesDialog.
///
/// This provider manages the state of the TotalLikesDialog, including the
/// current totalLikesModelObj
class TotalLikesProvider extends ChangeNotifier {
  TotalLikesModel totalLikesModelObj = TotalLikesModel();

  @override
  void dispose() {
    super.dispose();
  }
}
