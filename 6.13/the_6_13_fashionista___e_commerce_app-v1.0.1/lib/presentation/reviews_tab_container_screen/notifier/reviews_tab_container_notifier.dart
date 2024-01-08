import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_6_13_fashionista___e_commerce_app/presentation/reviews_tab_container_screen/models/reviews_tab_container_model.dart';
part 'reviews_tab_container_state.dart';

final reviewsTabContainerNotifier = StateNotifierProvider<
        ReviewsTabContainerNotifier, ReviewsTabContainerState>(
    (ref) => ReviewsTabContainerNotifier(ReviewsTabContainerState(
        reviewsTabContainerModelObj: ReviewsTabContainerModel())));

/// A notifier that manages the state of a ReviewsTabContainer according to the event that is dispatched to it.
class ReviewsTabContainerNotifier
    extends StateNotifier<ReviewsTabContainerState> {
  ReviewsTabContainerNotifier(ReviewsTabContainerState state) : super(state);
}
