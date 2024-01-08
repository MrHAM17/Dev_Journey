import 'package:flutter/material.dart';
import 'package:the_5_05_blog_app/core/app_export.dart';
import 'package:the_5_05_blog_app/presentation/home_screen/models/home_model.dart';
import '../models/framethirtysix_item_model.dart';
import '../models/stories_item_model.dart';

/// A provider class for the HomeScreen.
///
/// This provider manages the state of the HomeScreen, including the
/// current homeModelObj

// ignore_for_file: must_be_immutable
class HomeProvider extends ChangeNotifier {
  HomeModel homeModelObj = HomeModel();

  @override
  void dispose() {
    super.dispose();
  }
}
