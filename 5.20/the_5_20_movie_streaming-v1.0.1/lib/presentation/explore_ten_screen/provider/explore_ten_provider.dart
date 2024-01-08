import 'package:flutter/material.dart';
import 'package:the_5_20_movie_streaming/core/app_export.dart';
import 'package:the_5_20_movie_streaming/presentation/explore_ten_screen/models/explore_ten_model.dart';
import '../models/trending_item_model.dart';
import '../models/trending1_item_model.dart';
import '../models/trending2_item_model.dart';

/// A provider class for the ExploreTenScreen.
///
/// This provider manages the state of the ExploreTenScreen, including the
/// current exploreTenModelObj

// ignore_for_file: must_be_immutable
class ExploreTenProvider extends ChangeNotifier {
  ExploreTenModel exploreTenModelObj = ExploreTenModel();

  @override
  void dispose() {
    super.dispose();
  }
}
