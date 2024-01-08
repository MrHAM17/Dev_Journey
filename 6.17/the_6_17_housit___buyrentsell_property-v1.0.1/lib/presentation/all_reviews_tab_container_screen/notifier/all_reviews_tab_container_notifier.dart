import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:the_6_17_housit___buyrentsell_property/presentation/all_reviews_tab_container_screen/models/all_reviews_tab_container_model.dart';part 'all_reviews_tab_container_state.dart';final allReviewsTabContainerNotifier = StateNotifierProvider<AllReviewsTabContainerNotifier, AllReviewsTabContainerState>((ref) => AllReviewsTabContainerNotifier(AllReviewsTabContainerState(allReviewsTabContainerModelObj: AllReviewsTabContainerModel())));
/// A notifier that manages the state of a AllReviewsTabContainer according to the event that is dispatched to it.
class AllReviewsTabContainerNotifier extends StateNotifier<AllReviewsTabContainerState> {AllReviewsTabContainerNotifier(AllReviewsTabContainerState state) : super(state);

 }
