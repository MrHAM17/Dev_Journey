import 'package:flutter/material.dart';
import 'package:the_5_14_jusplay___movie_streaming_app/core/app_export.dart';
import 'package:the_5_14_jusplay___movie_streaming_app/presentation/history_screen/models/history_model.dart';
import '../models/history_item_model.dart';

/// A provider class for the HistoryScreen.
///
/// This provider manages the state of the HistoryScreen, including the
/// current historyModelObj

// ignore_for_file: must_be_immutable
class HistoryProvider extends ChangeNotifier {
  HistoryModel historyModelObj = HistoryModel();

  @override
  void dispose() {
    super.dispose();
  }
}
