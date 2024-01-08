import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_6_13_fashionista___e_commerce_app/presentation/home_tab_container_page/models/home_tab_container_model.dart';
part 'home_tab_container_state.dart';

final homeTabContainerNotifier =
    StateNotifierProvider<HomeTabContainerNotifier, HomeTabContainerState>(
        (ref) => HomeTabContainerNotifier(HomeTabContainerState(
            homeTabContainerModelObj: HomeTabContainerModel())));

/// A notifier that manages the state of a HomeTabContainer according to the event that is dispatched to it.
class HomeTabContainerNotifier extends StateNotifier<HomeTabContainerState> {
  HomeTabContainerNotifier(HomeTabContainerState state) : super(state);
}
