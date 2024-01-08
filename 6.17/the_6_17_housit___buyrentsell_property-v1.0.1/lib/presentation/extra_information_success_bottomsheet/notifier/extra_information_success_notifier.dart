import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_6_17_housit___buyrentsell_property/presentation/extra_information_success_bottomsheet/models/extra_information_success_model.dart';
part 'extra_information_success_state.dart';

final extraInformationSuccessNotifier = StateNotifierProvider<
    ExtraInformationSuccessNotifier, ExtraInformationSuccessState>(
  (ref) => ExtraInformationSuccessNotifier(ExtraInformationSuccessState(
    extraInformationSuccessModelObj: ExtraInformationSuccessModel(),
  )),
);

/// A notifier that manages the state of a ExtraInformationSuccess according to the event that is dispatched to it.
class ExtraInformationSuccessNotifier
    extends StateNotifier<ExtraInformationSuccessState> {
  ExtraInformationSuccessNotifier(ExtraInformationSuccessState state)
      : super(state) {}
}
