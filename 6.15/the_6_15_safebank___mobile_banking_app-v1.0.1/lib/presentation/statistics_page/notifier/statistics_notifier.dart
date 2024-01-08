import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_6_15_safebank___mobile_banking_app/presentation/statistics_page/models/statistics_model.dart';
part 'statistics_state.dart';

final statisticsNotifier =
    StateNotifierProvider<StatisticsNotifier, StatisticsState>(
  (ref) => StatisticsNotifier(StatisticsState(
    statisticsModelObj: StatisticsModel(),
  )),
);

/// A notifier that manages the state of a Statistics according to the event that is dispatched to it.
class StatisticsNotifier extends StateNotifier<StatisticsState> {
  StatisticsNotifier(StatisticsState state) : super(state) {}
}
