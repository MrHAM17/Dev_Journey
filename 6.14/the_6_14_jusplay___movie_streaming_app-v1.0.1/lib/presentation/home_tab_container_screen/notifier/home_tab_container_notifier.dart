import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/widget_item_model.dart';
import 'package:the_6_14_jusplay___movie_streaming_app/presentation/home_tab_container_screen/models/home_tab_container_model.dart';
part 'home_tab_container_state.dart';

final homeTabContainerNotifier =
    StateNotifierProvider<HomeTabContainerNotifier, HomeTabContainerState>(
  (ref) => HomeTabContainerNotifier(HomeTabContainerState(
    sliderIndex: 0,
    homeTabContainerModelObj: HomeTabContainerModel(
        widgetItemList: List.generate(1, (index) => WidgetItemModel())),
  )),
);

/// A notifier that manages the state of a HomeTabContainer according to the event that is dispatched to it.
class HomeTabContainerNotifier extends StateNotifier<HomeTabContainerState> {
  HomeTabContainerNotifier(HomeTabContainerState state) : super(state) {}
}
