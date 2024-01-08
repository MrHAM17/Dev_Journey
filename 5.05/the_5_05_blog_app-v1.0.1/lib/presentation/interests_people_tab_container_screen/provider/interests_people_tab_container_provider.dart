import 'package:flutter/material.dart';
import 'package:the_5_05_blog_app/core/app_export.dart';
import 'package:the_5_05_blog_app/presentation/interests_people_tab_container_screen/models/interests_people_tab_container_model.dart';

/// A provider class for the InterestsPeopleTabContainerScreen.
///
/// This provider manages the state of the InterestsPeopleTabContainerScreen, including the
/// current interestsPeopleTabContainerModelObj
class InterestsPeopleTabContainerProvider extends ChangeNotifier {
  InterestsPeopleTabContainerModel interestsPeopleTabContainerModelObj =
      InterestsPeopleTabContainerModel();

  @override
  void dispose() {
    super.dispose();
  }
}
