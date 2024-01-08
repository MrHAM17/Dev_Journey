import 'package:flutter/material.dart';
import 'package:the_5_14_jusplay___movie_streaming_app/core/app_export.dart';
import 'package:the_5_14_jusplay___movie_streaming_app/presentation/similiar_page/models/similiar_model.dart';
import '../models/similiar_item_model.dart';

/// A provider class for the SimiliarPage.
///
/// This provider manages the state of the SimiliarPage, including the
/// current similiarModelObj

// ignore_for_file: must_be_immutable
class SimiliarProvider extends ChangeNotifier {
  SimiliarModel similiarModelObj = SimiliarModel();

  @override
  void dispose() {
    super.dispose();
  }
}
