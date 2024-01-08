import 'package:flutter/material.dart';
import 'package:the_5_14_jusplay___movie_streaming_app/core/app_export.dart';
import 'package:the_5_14_jusplay___movie_streaming_app/presentation/no_history_screen/models/no_history_model.dart';

/// A provider class for the NoHistoryScreen.
///
/// This provider manages the state of the NoHistoryScreen, including the
/// current noHistoryModelObj

// ignore_for_file: must_be_immutable
class NoHistoryProvider extends ChangeNotifier {
  NoHistoryModel noHistoryModelObj = NoHistoryModel();

  @override
  void dispose() {
    super.dispose();
  }
}
