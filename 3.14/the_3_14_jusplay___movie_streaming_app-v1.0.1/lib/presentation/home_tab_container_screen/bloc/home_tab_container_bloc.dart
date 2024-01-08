import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/widget_item_model.dart';
import 'package:the_3_14_jusplay___movie_streaming_app/presentation/home_tab_container_screen/models/home_tab_container_model.dart';
part 'home_tab_container_event.dart';
part 'home_tab_container_state.dart';

/// A bloc that manages the state of a HomeTabContainer according to the event that is dispatched to it.
class HomeTabContainerBloc
    extends Bloc<HomeTabContainerEvent, HomeTabContainerState> {
  HomeTabContainerBloc(HomeTabContainerState initialState)
      : super(initialState) {
    on<HomeTabContainerInitialEvent>(_onInitialize);
  }

  List<WidgetItemModel> fillWidgetItemList() {
    return List.generate(1, (index) => WidgetItemModel());
  }

  _onInitialize(
    HomeTabContainerInitialEvent event,
    Emitter<HomeTabContainerState> emit,
  ) async {
    emit(state.copyWith(
      sliderIndex: 0,
    ));
    emit(state.copyWith(
        homeTabContainerModelObj: state.homeTabContainerModelObj?.copyWith(
      widgetItemList: fillWidgetItemList(),
    )));
  }
}
