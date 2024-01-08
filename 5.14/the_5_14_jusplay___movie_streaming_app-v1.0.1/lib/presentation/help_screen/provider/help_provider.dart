import 'package:flutter/material.dart';
import 'package:the_5_14_jusplay___movie_streaming_app/core/app_export.dart';
import 'package:the_5_14_jusplay___movie_streaming_app/presentation/help_screen/models/help_model.dart';

/// A provider class for the HelpScreen.
///
/// This provider manages the state of the HelpScreen, including the
/// current helpModelObj

// ignore_for_file: must_be_immutable
class HelpProvider extends ChangeNotifier {
  TextEditingController searchController = TextEditingController();

  HelpModel helpModelObj = HelpModel();

  @override
  void dispose() {
    super.dispose();
    searchController.dispose();
  }
}
