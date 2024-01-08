import 'package:flutter/material.dart';import 'package:the_5_17_housit___buyrentsell_property/core/app_export.dart';import 'package:the_5_17_housit___buyrentsell_property/presentation/all_reviews_page/models/all_reviews_model.dart';import '../models/allreviews_item_model.dart';/// A provider class for the AllReviewsPage.
///
/// This provider manages the state of the AllReviewsPage, including the
/// current allReviewsModelObj

// ignore_for_file: must_be_immutable
class AllReviewsProvider extends ChangeNotifier {AllReviewsModel allReviewsModelObj = AllReviewsModel();

@override void dispose() { super.dispose(); } 
 }
