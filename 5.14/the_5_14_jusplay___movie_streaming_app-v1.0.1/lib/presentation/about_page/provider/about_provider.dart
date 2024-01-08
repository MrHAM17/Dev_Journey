import 'package:flutter/material.dart';
import 'package:the_5_14_jusplay___movie_streaming_app/core/app_export.dart';
import 'package:the_5_14_jusplay___movie_streaming_app/presentation/about_page/models/about_model.dart';
import '../models/about_item_model.dart';

/// A provider class for the AboutPage.
///
/// This provider manages the state of the AboutPage, including the
/// current aboutModelObj

// ignore_for_file: must_be_immutable
class AboutProvider extends ChangeNotifier {
  AboutModel aboutModelObj = AboutModel();

  @override
  void dispose() {
    super.dispose();
  }
}
