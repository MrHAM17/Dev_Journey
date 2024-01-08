import 'package:flutter/material.dart';
import 'package:the_5_20_movie_streaming/core/app_export.dart';
import 'package:the_5_20_movie_streaming/presentation/detail_page_eight_screen/models/detail_page_eight_model.dart';
import '../models/movies5_item_model.dart';

/// A provider class for the DetailPageEightScreen.
///
/// This provider manages the state of the DetailPageEightScreen, including the
/// current detailPageEightModelObj

// ignore_for_file: must_be_immutable
class DetailPageEightProvider extends ChangeNotifier {
  DetailPageEightModel detailPageEightModelObj = DetailPageEightModel();

  @override
  void dispose() {
    super.dispose();
  }
}
