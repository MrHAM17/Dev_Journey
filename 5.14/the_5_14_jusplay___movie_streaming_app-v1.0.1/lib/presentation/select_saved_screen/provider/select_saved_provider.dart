import 'package:flutter/material.dart';
import 'package:the_5_14_jusplay___movie_streaming_app/core/app_export.dart';
import 'package:the_5_14_jusplay___movie_streaming_app/presentation/select_saved_screen/models/select_saved_model.dart';
import '../models/selectsaved_item_model.dart';

/// A provider class for the SelectSavedScreen.
///
/// This provider manages the state of the SelectSavedScreen, including the
/// current selectSavedModelObj

// ignore_for_file: must_be_immutable
class SelectSavedProvider extends ChangeNotifier {
  SelectSavedModel selectSavedModelObj = SelectSavedModel();

  @override
  void dispose() {
    super.dispose();
  }
}
