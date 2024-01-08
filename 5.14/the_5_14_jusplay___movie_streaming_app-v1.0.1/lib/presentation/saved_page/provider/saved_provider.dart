import 'package:flutter/material.dart';
import 'package:the_5_14_jusplay___movie_streaming_app/core/app_export.dart';
import 'package:the_5_14_jusplay___movie_streaming_app/presentation/saved_page/models/saved_model.dart';
import '../models/saved_item_model.dart';

/// A provider class for the SavedPage.
///
/// This provider manages the state of the SavedPage, including the
/// current savedModelObj

// ignore_for_file: must_be_immutable
class SavedProvider extends ChangeNotifier {
  SavedModel savedModelObj = SavedModel();

  @override
  void dispose() {
    super.dispose();
  }
}
