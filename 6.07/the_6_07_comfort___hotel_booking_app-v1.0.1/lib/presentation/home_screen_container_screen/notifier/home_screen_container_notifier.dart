import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:the_6_07_comfort___hotel_booking_app/presentation/home_screen_container_screen/models/home_screen_container_model.dart';part 'home_screen_container_state.dart';final homeScreenContainerNotifier = StateNotifierProvider<HomeScreenContainerNotifier, HomeScreenContainerState>((ref) => HomeScreenContainerNotifier(HomeScreenContainerState(homeScreenContainerModelObj: HomeScreenContainerModel())));
/// A notifier that manages the state of a HomeScreenContainer according to the event that is dispatched to it.
class HomeScreenContainerNotifier extends StateNotifier<HomeScreenContainerState> {HomeScreenContainerNotifier(HomeScreenContainerState state) : super(state);

 }
