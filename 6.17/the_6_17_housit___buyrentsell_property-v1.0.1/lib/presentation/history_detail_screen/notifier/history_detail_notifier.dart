import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:the_6_17_housit___buyrentsell_property/presentation/history_detail_screen/models/history_detail_model.dart';part 'history_detail_state.dart';final historyDetailNotifier = StateNotifierProvider<HistoryDetailNotifier, HistoryDetailState>((ref) => HistoryDetailNotifier(HistoryDetailState(historyDetailModelObj: HistoryDetailModel())));
/// A notifier that manages the state of a HistoryDetail according to the event that is dispatched to it.
class HistoryDetailNotifier extends StateNotifier<HistoryDetailState> {HistoryDetailNotifier(HistoryDetailState state) : super(state);

 }
