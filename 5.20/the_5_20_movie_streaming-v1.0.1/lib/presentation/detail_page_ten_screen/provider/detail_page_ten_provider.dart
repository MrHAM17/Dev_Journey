import 'package:flutter/material.dart';
import 'package:the_5_20_movie_streaming/core/app_export.dart';
import 'package:the_5_20_movie_streaming/presentation/detail_page_ten_screen/models/detail_page_ten_model.dart';
import '../models/movies2_item_model.dart';

/// A provider class for the DetailPageTenScreen.
///
/// This provider manages the state of the DetailPageTenScreen, including the
/// current detailPageTenModelObj

// ignore_for_file: must_be_immutable
class DetailPageTenProvider extends ChangeNotifier {
  DetailPageTenModel detailPageTenModelObj = DetailPageTenModel();

  @override
  void dispose() {
    super.dispose();
  }
}
