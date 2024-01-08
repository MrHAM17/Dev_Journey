import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_6_15_safebank___mobile_banking_app/presentation/statistics_tab_container_page/models/statistics_tab_container_model.dart';
part 'statistics_tab_container_state.dart';

final statisticsTabContainerNotifier = StateNotifierProvider<
        StatisticsTabContainerNotifier, StatisticsTabContainerState>(
    (ref) => StatisticsTabContainerNotifier(StatisticsTabContainerState(
        selectedDropDownValue: SelectionPopupModel(title: ''),
        statisticsTabContainerModelObj:
            StatisticsTabContainerModel(dropdownItemList: [
          SelectionPopupModel(id: 1, title: "Item One", isSelected: true),
          SelectionPopupModel(id: 2, title: "Item Two"),
          SelectionPopupModel(id: 3, title: "Item Three")
        ]))));

/// A notifier that manages the state of a StatisticsTabContainer according to the event that is dispatched to it.
class StatisticsTabContainerNotifier
    extends StateNotifier<StatisticsTabContainerState> {
  StatisticsTabContainerNotifier(StatisticsTabContainerState state)
      : super(state);
}
