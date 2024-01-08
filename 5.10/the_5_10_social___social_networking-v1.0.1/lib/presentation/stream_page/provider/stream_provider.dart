import 'package:flutter/material.dart';
import 'package:the_5_10_social___social_networking/core/app_export.dart';
import 'package:the_5_10_social___social_networking/presentation/stream_page/models/stream_model.dart';
import '../models/stream_item_model.dart';

/// A provider class for the StreamPage.
///
/// This provider manages the state of the StreamPage, including the
/// current streamModelObj

// ignore_for_file: must_be_immutable
class StreamProvider extends ChangeNotifier {
  StreamModel streamModelObj = StreamModel();

  @override
  void dispose() {
    super.dispose();
  }
}
