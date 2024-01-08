import 'package:flutter/material.dart';
import 'package:the_5_14_jusplay___movie_streaming_app/core/app_export.dart';
import 'package:the_5_14_jusplay___movie_streaming_app/presentation/saved_empty_screen/models/saved_empty_model.dart';

/// A provider class for the SavedEmptyScreen.
///
/// This provider manages the state of the SavedEmptyScreen, including the
/// current savedEmptyModelObj
class SavedEmptyProvider extends ChangeNotifier {
  SavedEmptyModel savedEmptyModelObj = SavedEmptyModel();

  @override
  void dispose() {
    super.dispose();
  }
}
