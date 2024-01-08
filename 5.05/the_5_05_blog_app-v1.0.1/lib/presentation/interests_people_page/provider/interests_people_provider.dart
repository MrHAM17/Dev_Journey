import 'package:flutter/material.dart';
import 'package:the_5_05_blog_app/core/app_export.dart';
import 'package:the_5_05_blog_app/presentation/interests_people_page/models/interests_people_model.dart';
import '../models/interestspeople_item_model.dart';

/// A provider class for the InterestsPeoplePage.
///
/// This provider manages the state of the InterestsPeoplePage, including the
/// current interestsPeopleModelObj

// ignore_for_file: must_be_immutable
class InterestsPeopleProvider extends ChangeNotifier {
  InterestsPeopleModel interestsPeopleModelObj = InterestsPeopleModel();

  @override
  void dispose() {
    super.dispose();
  }
}
