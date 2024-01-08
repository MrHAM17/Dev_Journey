import 'package:flutter/material.dart';
import 'package:the_5_20_movie_streaming/core/app_export.dart';
import 'package:the_5_20_movie_streaming/presentation/detail_page_seven_screen/models/detail_page_seven_model.dart';
import '../models/movies_item_model.dart';

/// A provider class for the DetailPageSevenScreen.
///
/// This provider manages the state of the DetailPageSevenScreen, including the
/// current detailPageSevenModelObj

// ignore_for_file: must_be_immutable
class DetailPageSevenProvider extends ChangeNotifier {
  DetailPageSevenModel detailPageSevenModelObj = DetailPageSevenModel();

  @override
  void dispose() {
    super.dispose();
  }
}
