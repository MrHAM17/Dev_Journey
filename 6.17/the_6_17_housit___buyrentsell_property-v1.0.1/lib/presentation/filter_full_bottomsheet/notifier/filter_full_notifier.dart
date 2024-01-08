import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/widget_item_model.dart';
import '../models/widget2_item_model.dart';
import 'package:the_6_17_housit___buyrentsell_property/presentation/filter_full_bottomsheet/models/filter_full_model.dart';
part 'filter_full_state.dart';

final filterFullNotifier =
    StateNotifierProvider<FilterFullNotifier, FilterFullState>(
  (ref) => FilterFullNotifier(FilterFullState(
    searchController: TextEditingController(),
    priceController: TextEditingController(),
    formValueController: TextEditingController(),
    filterFullModelObj: FilterFullModel(
        widgetItemList: List.generate(2, (index) => WidgetItemModel()),
        widget2ItemList: List.generate(7, (index) => Widget2ItemModel())),
  )),
);

/// A notifier that manages the state of a FilterFull according to the event that is dispatched to it.
class FilterFullNotifier extends StateNotifier<FilterFullState> {
  FilterFullNotifier(FilterFullState state) : super(state) {}

  void onSelectedChipView1(
    int index,
    bool value,
  ) {
    List<WidgetItemModel> newList =
        List<WidgetItemModel>.from(state.filterFullModelObj!.widgetItemList);
    newList[index] = newList[index].copyWith(isSelected: value);
    state = state.copyWith(
        filterFullModelObj:
            state.filterFullModelObj?.copyWith(widgetItemList: newList));
  }

  void onSelectedChipView2(
    int index,
    bool value,
  ) {
    List<Widget2ItemModel> newList =
        List<Widget2ItemModel>.from(state.filterFullModelObj!.widget2ItemList);
    newList[index] = newList[index].copyWith(isSelected: value);
    state = state.copyWith(
        filterFullModelObj:
            state.filterFullModelObj?.copyWith(widget2ItemList: newList));
  }
}
