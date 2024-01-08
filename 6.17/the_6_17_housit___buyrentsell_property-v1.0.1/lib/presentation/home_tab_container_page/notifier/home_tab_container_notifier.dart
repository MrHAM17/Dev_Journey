import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_6_17_housit___buyrentsell_property/presentation/home_tab_container_page/models/home_tab_container_model.dart';
part 'home_tab_container_state.dart';

final homeTabContainerNotifier =
    StateNotifierProvider<HomeTabContainerNotifier, HomeTabContainerState>(
  (ref) => HomeTabContainerNotifier(HomeTabContainerState(
    searchController: TextEditingController(),
    selectedDropDownValue: SelectionPopupModel(title: ''),
    homeTabContainerModelObj: HomeTabContainerModel(dropdownItemList: [
      SelectionPopupModel(
        id: 1,
        title: "Item One",
        isSelected: true,
      ),
      SelectionPopupModel(
        id: 2,
        title: "Item Two",
      ),
      SelectionPopupModel(
        id: 3,
        title: "Item Three",
      )
    ]),
  )),
);

/// A notifier that manages the state of a HomeTabContainer according to the event that is dispatched to it.
class HomeTabContainerNotifier extends StateNotifier<HomeTabContainerState> {
  HomeTabContainerNotifier(HomeTabContainerState state) : super(state) {}
}
