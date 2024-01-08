import 'package:flutter/material.dart';
import 'package:the_5_13_fashionista___e_commerce_app/core/app_export.dart';
import 'package:the_5_13_fashionista___e_commerce_app/presentation/reviews_page/models/reviews_model.dart';

/// A provider class for the ReviewsPage.
///
/// This provider manages the state of the ReviewsPage, including the
/// current reviewsModelObj

// ignore_for_file: must_be_immutable
class ReviewsProvider extends ChangeNotifier {
  ReviewsModel reviewsModelObj = ReviewsModel();

  @override
  void dispose() {
    super.dispose();
  }
}
