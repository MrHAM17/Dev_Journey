import 'package:flutter/material.dart';import 'package:the_5_07_comfort___hotel_booking_app/core/app_export.dart';import 'package:the_5_07_comfort___hotel_booking_app/presentation/review_page/models/review_model.dart';import '../models/review_item_model.dart';/// A provider class for the ReviewPage.
///
/// This provider manages the state of the ReviewPage, including the
/// current reviewModelObj

// ignore_for_file: must_be_immutable
class ReviewProvider extends ChangeNotifier {ReviewModel reviewModelObj = ReviewModel();

@override void dispose() { super.dispose(); } 
 }
