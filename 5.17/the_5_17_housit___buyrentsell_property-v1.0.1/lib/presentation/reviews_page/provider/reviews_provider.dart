import 'package:flutter/material.dart';import 'package:the_5_17_housit___buyrentsell_property/core/app_export.dart';import 'package:the_5_17_housit___buyrentsell_property/presentation/reviews_page/models/reviews_model.dart';import '../models/layout26_item_model.dart';/// A provider class for the ReviewsPage.
///
/// This provider manages the state of the ReviewsPage, including the
/// current reviewsModelObj

// ignore_for_file: must_be_immutable
class ReviewsProvider extends ChangeNotifier {ReviewsModel reviewsModelObj = ReviewsModel();

@override void dispose() { super.dispose(); } 
 }
