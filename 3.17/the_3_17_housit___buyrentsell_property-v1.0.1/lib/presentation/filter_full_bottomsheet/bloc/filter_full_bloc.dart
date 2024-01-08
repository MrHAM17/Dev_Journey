import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/widget_item_model.dart';
import '../models/widget2_item_model.dart';
import 'package:the_3_17_housit___buyrentsell_property/presentation/filter_full_bottomsheet/models/filter_full_model.dart';
part 'filter_full_event.dart';
part 'filter_full_state.dart';

/// A bloc that manages the state of a FilterFull according to the event that is dispatched to it.
class FilterFullBloc extends Bloc<FilterFullEvent, FilterFullState> {
  FilterFullBloc(FilterFullState initialState) : super(initialState) {
    on<FilterFullInitialEvent>(_onInitialize);
    on<UpdateChipViewEvent>(_updateChipView);
    on<UpdateChipView1Event>(_updateChipView1);
  }

  _updateChipView(
    UpdateChipViewEvent event,
    Emitter<FilterFullState> emit,
  ) {
    List<WidgetItemModel> newList =
        List<WidgetItemModel>.from(state.filterFullModelObj!.widgetItemList);
    newList[event.index] = newList[event.index].copyWith(
      isSelected: event.isSelected,
    );
    emit(state.copyWith(
        filterFullModelObj:
            state.filterFullModelObj?.copyWith(widgetItemList: newList)));
  }

  _updateChipView1(
    UpdateChipView1Event event,
    Emitter<FilterFullState> emit,
  ) {
    List<Widget2ItemModel> newList =
        List<Widget2ItemModel>.from(state.filterFullModelObj!.widget2ItemList);
    newList[event.index] = newList[event.index].copyWith(
      isSelected: event.isSelected,
    );
    emit(state.copyWith(
        filterFullModelObj:
            state.filterFullModelObj?.copyWith(widget2ItemList: newList)));
  }

  List<WidgetItemModel> fillWidgetItemList() {
    return List.generate(2, (index) => WidgetItemModel());
  }

  List<Widget2ItemModel> fillWidget2ItemList() {
    return List.generate(7, (index) => Widget2ItemModel());
  }

  _onInitialize(
    FilterFullInitialEvent event,
    Emitter<FilterFullState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
      priceController: TextEditingController(),
      formValueController: TextEditingController(),
    ));
    emit(state.copyWith(
        filterFullModelObj: state.filterFullModelObj?.copyWith(
      widgetItemList: fillWidgetItemList(),
      widget2ItemList: fillWidget2ItemList(),
    )));
  }
}
