import 'package:flutter/material.dart';
import 'package:the_5_20_movie_streaming/core/app_export.dart';
import 'package:the_5_20_movie_streaming/presentation/detail_page_twelve_screen/models/detail_page_twelve_model.dart';
import '../models/movies4_item_model.dart';

/// A provider class for the DetailPageTwelveScreen.
///
/// This provider manages the state of the DetailPageTwelveScreen, including the
/// current detailPageTwelveModelObj

// ignore_for_file: must_be_immutable
class DetailPageTwelveProvider extends ChangeNotifier {
  DetailPageTwelveModel detailPageTwelveModelObj = DetailPageTwelveModel();

  @override
  void dispose() {
    super.dispose();
  }
}
