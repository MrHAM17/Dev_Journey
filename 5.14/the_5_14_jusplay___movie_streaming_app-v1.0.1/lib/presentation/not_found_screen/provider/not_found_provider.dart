import 'package:flutter/material.dart';
import 'package:the_5_14_jusplay___movie_streaming_app/core/app_export.dart';
import 'package:the_5_14_jusplay___movie_streaming_app/presentation/not_found_screen/models/not_found_model.dart';

/// A provider class for the NotFoundScreen.
///
/// This provider manages the state of the NotFoundScreen, including the
/// current notFoundModelObj
class NotFoundProvider extends ChangeNotifier {
  TextEditingController searchController = TextEditingController();

  NotFoundModel notFoundModelObj = NotFoundModel();

  @override
  void dispose() {
    super.dispose();
    searchController.dispose();
  }
}
