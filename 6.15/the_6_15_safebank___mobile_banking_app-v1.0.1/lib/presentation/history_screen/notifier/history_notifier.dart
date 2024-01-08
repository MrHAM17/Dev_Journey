import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/duration_item_model.dart';
import 'package:the_6_15_safebank___mobile_banking_app/presentation/history_screen/models/history_model.dart';
part 'history_state.dart';

final historyNotifier = StateNotifierProvider<HistoryNotifier, HistoryState>(
    (ref) => HistoryNotifier(HistoryState(
            historyModelObj: HistoryModel(durationItemList: [
          DurationItemModel(groupBy: "Today, 25 June"),
          DurationItemModel(groupBy: "Today, 25 June"),
          DurationItemModel(groupBy: "Today, 25 June"),
          DurationItemModel(groupBy: "Today, 25 June"),
          DurationItemModel(groupBy: "Yesterday"),
          DurationItemModel(groupBy: "Yesterday"),
          DurationItemModel(groupBy: "Yesterday"),
          DurationItemModel(groupBy: "20 June, 2022"),
          DurationItemModel(groupBy: "20 June, 2022")
        ]))));

/// A notifier that manages the state of a History according to the event that is dispatched to it.
class HistoryNotifier extends StateNotifier<HistoryState> {
  HistoryNotifier(HistoryState state) : super(state);
}
