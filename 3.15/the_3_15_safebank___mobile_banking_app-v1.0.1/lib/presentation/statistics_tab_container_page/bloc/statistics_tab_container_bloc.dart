import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_3_15_safebank___mobile_banking_app/presentation/statistics_tab_container_page/models/statistics_tab_container_model.dart';
part 'statistics_tab_container_event.dart';
part 'statistics_tab_container_state.dart';

/// A bloc that manages the state of a StatisticsTabContainer according to the event that is dispatched to it.
class StatisticsTabContainerBloc
    extends Bloc<StatisticsTabContainerEvent, StatisticsTabContainerState> {
  StatisticsTabContainerBloc(StatisticsTabContainerState initialState)
      : super(initialState) {
    on<StatisticsTabContainerInitialEvent>(_onInitialize);
    on<ChangeDropDownEvent>(_changeDropDown);
  }

  _onInitialize(
    StatisticsTabContainerInitialEvent event,
    Emitter<StatisticsTabContainerState> emit,
  ) async {
    emit(state.copyWith(
        statisticsTabContainerModelObj: state.statisticsTabContainerModelObj
            ?.copyWith(dropdownItemList: fillDropdownItemList())));
  }

  _changeDropDown(
    ChangeDropDownEvent event,
    Emitter<StatisticsTabContainerState> emit,
  ) {
    emit(state.copyWith(selectedDropDownValue: event.value));
  }

  List<SelectionPopupModel> fillDropdownItemList() {
    return [
      SelectionPopupModel(id: 1, title: "Item One", isSelected: true),
      SelectionPopupModel(id: 2, title: "Item Two"),
      SelectionPopupModel(id: 3, title: "Item Three")
    ];
  }
}