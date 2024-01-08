import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/tags_item_model.dart';
import 'package:the_6_09_social_dashboards_ui_kit/presentation/single_video_bottomsheet/models/single_video_model.dart';
part 'single_video_state.dart';

final singleVideoNotifier =
    StateNotifierProvider<SingleVideoNotifier, SingleVideoState>(
  (ref) => SingleVideoNotifier(SingleVideoState(
    singleVideoModelObj: SingleVideoModel(
        tagsItemList: List.generate(5, (index) => TagsItemModel())),
  )),
);

/// A notifier that manages the state of a SingleVideo according to the event that is dispatched to it.
class SingleVideoNotifier extends StateNotifier<SingleVideoState> {
  SingleVideoNotifier(SingleVideoState state) : super(state) {}

  void onSelectedChipView1(
    int index,
    bool value,
  ) {
    List<TagsItemModel> newList =
        List<TagsItemModel>.from(state.singleVideoModelObj!.tagsItemList);
    newList[index] = newList[index].copyWith(isSelected: value);
    state = state.copyWith(
        singleVideoModelObj:
            state.singleVideoModelObj?.copyWith(tagsItemList: newList));
  }
}
