import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/frame_item_model.dart';
import 'package:the_6_13_fashionista___e_commerce_app/presentation/explore_shop_screen/models/explore_shop_model.dart';
part 'explore_shop_state.dart';

final exploreShopNotifier =
    StateNotifierProvider<ExploreShopNotifier, ExploreShopState>(
  (ref) => ExploreShopNotifier(ExploreShopState(
    exploreShopModelObj: ExploreShopModel(
        frameItemList: List.generate(21, (index) => FrameItemModel())),
  )),
);

/// A notifier that manages the state of a ExploreShop according to the event that is dispatched to it.
class ExploreShopNotifier extends StateNotifier<ExploreShopState> {
  ExploreShopNotifier(ExploreShopState state) : super(state) {}

  void onSelectedChipView1(
    int index,
    bool value,
  ) {
    List<FrameItemModel> newList =
        List<FrameItemModel>.from(state.exploreShopModelObj!.frameItemList);
    newList[index] = newList[index].copyWith(isSelected: value);
    state = state.copyWith(
        exploreShopModelObj:
            state.exploreShopModelObj?.copyWith(frameItemList: newList));
  }
}
