import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_6_17_housit___buyrentsell_property/presentation/extra_information_error_bottomsheet/models/extra_information_error_model.dart';
part 'extra_information_error_state.dart';

final extraInformationErrorNotifier = StateNotifierProvider<
    ExtraInformationErrorNotifier, ExtraInformationErrorState>(
  (ref) => ExtraInformationErrorNotifier(ExtraInformationErrorState(
    extraInformationErrorModelObj: ExtraInformationErrorModel(),
  )),
);

/// A notifier that manages the state of a ExtraInformationError according to the event that is dispatched to it.
class ExtraInformationErrorNotifier
    extends StateNotifier<ExtraInformationErrorState> {
  ExtraInformationErrorNotifier(ExtraInformationErrorState state)
      : super(state) {}
}
