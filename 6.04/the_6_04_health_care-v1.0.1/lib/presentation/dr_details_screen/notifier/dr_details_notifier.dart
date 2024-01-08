import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:table_calendar/table_calendar.dart';
import '../models/timeslots_item_model.dart';
import 'package:the_6_04_health_care/presentation/dr_details_screen/models/dr_details_model.dart';
part 'dr_details_state.dart';

final drDetailsNotifier =
    StateNotifierProvider<DrDetailsNotifier, DrDetailsState>((ref) =>
        DrDetailsNotifier(DrDetailsState(
            rangeStart: DateTime.now(),
            rangeEnd: DateTime.now(),
            selectedDay: DateTime.now(),
            focusedDay: DateTime.now(),
            rangeSelectionMode: RangeSelectionMode.toggledOn,
            drDetailsModelObj: DrDetailsModel(
                timeslotsItemList:
                    List.generate(9, (index) => TimeslotsItemModel())))));

/// A notifier that manages the state of a DrDetails according to the event that is dispatched to it.
class DrDetailsNotifier extends StateNotifier<DrDetailsState> {
  DrDetailsNotifier(DrDetailsState state) : super(state);

  void onSelectedChipView1(
    int index,
    bool value,
  ) {
    List<TimeslotsItemModel> newList = List<TimeslotsItemModel>.from(
        state.drDetailsModelObj!.timeslotsItemList);
    newList[index] = newList[index].copyWith(isSelected: value);
    state = state.copyWith(
        drDetailsModelObj:
            state.drDetailsModelObj?.copyWith(timeslotsItemList: newList));
  }
}
