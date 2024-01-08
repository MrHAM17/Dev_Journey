import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_6_16_tikpik___short_video__social_networking/presentation/home_swipe_up_instructions_screen/models/home_swipe_up_instructions_model.dart';
part 'home_swipe_up_instructions_state.dart';

final homeSwipeUpInstructionsNotifier = StateNotifierProvider<
    HomeSwipeUpInstructionsNotifier, HomeSwipeUpInstructionsState>(
  (ref) => HomeSwipeUpInstructionsNotifier(HomeSwipeUpInstructionsState(
    homeSwipeUpInstructionsModelObj: HomeSwipeUpInstructionsModel(),
  )),
);

/// A notifier that manages the state of a HomeSwipeUpInstructions according to the event that is dispatched to it.
class HomeSwipeUpInstructionsNotifier
    extends StateNotifier<HomeSwipeUpInstructionsState> {
  HomeSwipeUpInstructionsNotifier(HomeSwipeUpInstructionsState state)
      : super(state) {}
}
