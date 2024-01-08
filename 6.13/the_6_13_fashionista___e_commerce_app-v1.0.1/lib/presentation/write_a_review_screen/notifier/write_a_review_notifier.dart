import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_6_13_fashionista___e_commerce_app/presentation/write_a_review_screen/models/write_a_review_model.dart';
part 'write_a_review_state.dart';

final writeAReviewNotifier =
    StateNotifierProvider<WriteAReviewNotifier, WriteAReviewState>((ref) =>
        WriteAReviewNotifier(WriteAReviewState(
            inputFieldsController: TextEditingController(),
            writeAReviewModelObj: WriteAReviewModel())));

/// A notifier that manages the state of a WriteAReview according to the event that is dispatched to it.
class WriteAReviewNotifier extends StateNotifier<WriteAReviewState> {
  WriteAReviewNotifier(WriteAReviewState state) : super(state);
}
