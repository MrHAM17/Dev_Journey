import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/fiftyfive_item_model.dart';
import '../models/jobs_item_model.dart';
import 'package:the_6_11_hired___job_search/presentation/filter_bottomsheet/models/filter_model.dart';
part 'filter_state.dart';

final filterNotifier = StateNotifierProvider<FilterNotifier, FilterState>(
    (ref) => FilterNotifier(FilterState(
        filterModelObj: FilterModel(
            fiftyfiveItemList:
                List.generate(6, (index) => FiftyfiveItemModel()),
            jobsItemList: List.generate(2, (index) => JobsItemModel())))));

/// A notifier that manages the state of a Filter according to the event that is dispatched to it.
class FilterNotifier extends StateNotifier<FilterState> {
  FilterNotifier(FilterState state) : super(state);

  void onSelectedChipView1(
    int index,
    bool value,
  ) {
    List<FiftyfiveItemModel> newList =
        List<FiftyfiveItemModel>.from(state.filterModelObj!.fiftyfiveItemList);
    newList[index] = newList[index].copyWith(isSelected: value);
    state = state.copyWith(
        filterModelObj:
            state.filterModelObj?.copyWith(fiftyfiveItemList: newList));
  }

  void onSelectedChipView2(
    int index,
    bool value,
  ) {
    List<JobsItemModel> newList =
        List<JobsItemModel>.from(state.filterModelObj!.jobsItemList);
    newList[index] = newList[index].copyWith(isSelected: value);
    state = state.copyWith(
        filterModelObj: state.filterModelObj?.copyWith(jobsItemList: newList));
  }
}
