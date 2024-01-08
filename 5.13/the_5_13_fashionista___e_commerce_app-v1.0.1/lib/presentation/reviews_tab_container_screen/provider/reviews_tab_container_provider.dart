import 'package:flutter/material.dart';
import 'package:the_5_13_fashionista___e_commerce_app/core/app_export.dart';
import 'package:the_5_13_fashionista___e_commerce_app/presentation/reviews_tab_container_screen/models/reviews_tab_container_model.dart';

/// A provider class for the ReviewsTabContainerScreen.
///
/// This provider manages the state of the ReviewsTabContainerScreen, including the
/// current reviewsTabContainerModelObj

// ignore_for_file: must_be_immutable
class ReviewsTabContainerProvider extends ChangeNotifier {
  ReviewsTabContainerModel reviewsTabContainerModelObj =
      ReviewsTabContainerModel();

  @override
  void dispose() {
    super.dispose();
  }
}
