import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_6_13_fashionista___e_commerce_app/presentation/reviews_page/models/reviews_model.dart';
part 'reviews_state.dart';

final reviewsNotifier = StateNotifierProvider<ReviewsNotifier, ReviewsState>(
    (ref) => ReviewsNotifier(ReviewsState(reviewsModelObj: ReviewsModel())));

/// A notifier that manages the state of a Reviews according to the event that is dispatched to it.
class ReviewsNotifier extends StateNotifier<ReviewsState> {
  ReviewsNotifier(ReviewsState state) : super(state);
}
