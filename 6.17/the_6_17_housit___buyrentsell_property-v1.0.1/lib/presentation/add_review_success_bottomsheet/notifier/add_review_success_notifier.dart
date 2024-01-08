import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_6_17_housit___buyrentsell_property/presentation/add_review_success_bottomsheet/models/add_review_success_model.dart';
part 'add_review_success_state.dart';

final addReviewSuccessNotifier =
    StateNotifierProvider<AddReviewSuccessNotifier, AddReviewSuccessState>(
  (ref) => AddReviewSuccessNotifier(AddReviewSuccessState(
    addReviewSuccessModelObj: AddReviewSuccessModel(),
  )),
);

/// A notifier that manages the state of a AddReviewSuccess according to the event that is dispatched to it.
class AddReviewSuccessNotifier extends StateNotifier<AddReviewSuccessState> {
  AddReviewSuccessNotifier(AddReviewSuccessState state) : super(state) {}
}
