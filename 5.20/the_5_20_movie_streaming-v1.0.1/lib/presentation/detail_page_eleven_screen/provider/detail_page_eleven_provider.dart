import 'package:flutter/material.dart';
import 'package:the_5_20_movie_streaming/core/app_export.dart';
import 'package:the_5_20_movie_streaming/presentation/detail_page_eleven_screen/models/detail_page_eleven_model.dart';
import '../models/movies3_item_model.dart';

/// A provider class for the DetailPageElevenScreen.
///
/// This provider manages the state of the DetailPageElevenScreen, including the
/// current detailPageElevenModelObj

// ignore_for_file: must_be_immutable
class DetailPageElevenProvider extends ChangeNotifier {
  DetailPageElevenModel detailPageElevenModelObj = DetailPageElevenModel();

  @override
  void dispose() {
    super.dispose();
  }
}
