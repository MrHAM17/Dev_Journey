import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:the_6_17_housit___buyrentsell_property/presentation/summary_screen/models/summary_model.dart';part 'summary_state.dart';final summaryNotifier = StateNotifierProvider<SummaryNotifier, SummaryState>((ref) => SummaryNotifier(SummaryState(summaryModelObj: SummaryModel())));
/// A notifier that manages the state of a Summary according to the event that is dispatched to it.
class SummaryNotifier extends StateNotifier<SummaryState> {SummaryNotifier(SummaryState state) : super(state);

 }
