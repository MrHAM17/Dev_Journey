import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:the_6_07_comfort___hotel_booking_app/presentation/home_screen_tab_container_page/models/home_screen_tab_container_model.dart';part 'home_screen_tab_container_state.dart';final homeScreenTabContainerNotifier = StateNotifierProvider<HomeScreenTabContainerNotifier, HomeScreenTabContainerState>((ref) => HomeScreenTabContainerNotifier(HomeScreenTabContainerState(searchController: TextEditingController(), homeScreenTabContainerModelObj: HomeScreenTabContainerModel())));
/// A notifier that manages the state of a HomeScreenTabContainer according to the event that is dispatched to it.
class HomeScreenTabContainerNotifier extends StateNotifier<HomeScreenTabContainerState> {HomeScreenTabContainerNotifier(HomeScreenTabContainerState state) : super(state);

 }
