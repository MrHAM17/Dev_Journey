import 'package:flutter/material.dart';
import 'package:the_5_05_blog_app/core/app_export.dart';
import 'package:the_5_05_blog_app/presentation/interests_topics_page/models/interests_topics_model.dart';
import '../models/intereststopics_item_model.dart';

/// A provider class for the InterestsTopicsPage.
///
/// This provider manages the state of the InterestsTopicsPage, including the
/// current interestsTopicsModelObj

// ignore_for_file: must_be_immutable
class InterestsTopicsProvider extends ChangeNotifier {
  InterestsTopicsModel interestsTopicsModelObj = InterestsTopicsModel();

  @override
  void dispose() {
    super.dispose();
  }
}
