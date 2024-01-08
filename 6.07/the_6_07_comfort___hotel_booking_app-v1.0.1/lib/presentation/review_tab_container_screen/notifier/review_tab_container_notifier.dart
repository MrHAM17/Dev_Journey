import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:the_6_07_comfort___hotel_booking_app/presentation/review_tab_container_screen/models/review_tab_container_model.dart';part 'review_tab_container_state.dart';final reviewTabContainerNotifier = StateNotifierProvider<ReviewTabContainerNotifier, ReviewTabContainerState>((ref) => ReviewTabContainerNotifier(ReviewTabContainerState(reviewTabContainerModelObj: ReviewTabContainerModel())));
/// A notifier that manages the state of a ReviewTabContainer according to the event that is dispatched to it.
class ReviewTabContainerNotifier extends StateNotifier<ReviewTabContainerState> {ReviewTabContainerNotifier(ReviewTabContainerState state) : super(state);

 }
