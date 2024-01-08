import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:the_6_17_housit___buyrentsell_property/presentation/reviews_gallery_screen/models/reviews_gallery_model.dart';part 'reviews_gallery_state.dart';final reviewsGalleryNotifier = StateNotifierProvider<ReviewsGalleryNotifier, ReviewsGalleryState>((ref) => ReviewsGalleryNotifier(ReviewsGalleryState(reviewsGalleryModelObj: ReviewsGalleryModel())));
/// A notifier that manages the state of a ReviewsGallery according to the event that is dispatched to it.
class ReviewsGalleryNotifier extends StateNotifier<ReviewsGalleryState> {ReviewsGalleryNotifier(ReviewsGalleryState state) : super(state);

 }
