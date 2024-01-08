import 'package:flutter/material.dart';
import 'package:the_5_14_jusplay___movie_streaming_app/core/app_export.dart';
import 'package:the_5_14_jusplay___movie_streaming_app/presentation/category_comedy_screen/models/category_comedy_model.dart';
import '../models/categorycomedy_item_model.dart';

/// A provider class for the CategoryComedyScreen.
///
/// This provider manages the state of the CategoryComedyScreen, including the
/// current categoryComedyModelObj

// ignore_for_file: must_be_immutable
class CategoryComedyProvider extends ChangeNotifier {
  CategoryComedyModel categoryComedyModelObj = CategoryComedyModel();

  @override
  void dispose() {
    super.dispose();
  }
}
