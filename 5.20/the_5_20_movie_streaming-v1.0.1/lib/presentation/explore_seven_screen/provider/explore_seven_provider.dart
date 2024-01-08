import 'package:flutter/material.dart';
import 'package:the_5_20_movie_streaming/core/app_export.dart';
import 'package:the_5_20_movie_streaming/presentation/explore_seven_screen/models/explore_seven_model.dart';
import '../models/specials6_item_model.dart';
import '../models/io_item_model.dart';
import '../models/turnerhooch_item_model.dart';

/// A provider class for the ExploreSevenScreen.
///
/// This provider manages the state of the ExploreSevenScreen, including the
/// current exploreSevenModelObj

// ignore_for_file: must_be_immutable
class ExploreSevenProvider extends ChangeNotifier {
  ExploreSevenModel exploreSevenModelObj = ExploreSevenModel();

  @override
  void dispose() {
    super.dispose();
  }
}
