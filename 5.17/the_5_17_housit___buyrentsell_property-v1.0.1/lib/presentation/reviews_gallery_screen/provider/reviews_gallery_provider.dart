import 'package:flutter/material.dart';import 'package:the_5_17_housit___buyrentsell_property/core/app_export.dart';import 'package:the_5_17_housit___buyrentsell_property/presentation/reviews_gallery_screen/models/reviews_gallery_model.dart';/// A provider class for the ReviewsGalleryScreen.
///
/// This provider manages the state of the ReviewsGalleryScreen, including the
/// current reviewsGalleryModelObj

// ignore_for_file: must_be_immutable
class ReviewsGalleryProvider extends ChangeNotifier {ReviewsGalleryModel reviewsGalleryModelObj = ReviewsGalleryModel();

@override void dispose() { super.dispose(); } 
 }
