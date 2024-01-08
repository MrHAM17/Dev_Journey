import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:the_6_17_housit___buyrentsell_property/presentation/add_review_empty_screen/models/add_review_empty_model.dart';part 'add_review_empty_state.dart';final addReviewEmptyNotifier = StateNotifierProvider<AddReviewEmptyNotifier, AddReviewEmptyState>((ref) => AddReviewEmptyNotifier(AddReviewEmptyState(formTextareaController: TextEditingController(), addReviewEmptyModelObj: AddReviewEmptyModel())));
/// A notifier that manages the state of a AddReviewEmpty according to the event that is dispatched to it.
class AddReviewEmptyNotifier extends StateNotifier<AddReviewEmptyState> {AddReviewEmptyNotifier(AddReviewEmptyState state) : super(state);

 }
