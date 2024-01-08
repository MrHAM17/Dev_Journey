import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_6_17_housit___buyrentsell_property/presentation/summary_success_bottomsheet/models/summary_success_model.dart';
part 'summary_success_state.dart';

final summarySuccessNotifier =
    StateNotifierProvider<SummarySuccessNotifier, SummarySuccessState>(
  (ref) => SummarySuccessNotifier(SummarySuccessState(
    summarySuccessModelObj: SummarySuccessModel(),
  )),
);

/// A notifier that manages the state of a SummarySuccess according to the event that is dispatched to it.
class SummarySuccessNotifier extends StateNotifier<SummarySuccessState> {
  SummarySuccessNotifier(SummarySuccessState state) : super(state) {}
}
