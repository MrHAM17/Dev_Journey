import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_3_16_tikpik___short_video__social_networking/presentation/home_swipe_up_instructions_screen/models/home_swipe_up_instructions_model.dart';
part 'home_swipe_up_instructions_event.dart';
part 'home_swipe_up_instructions_state.dart';

/// A bloc that manages the state of a HomeSwipeUpInstructions according to the event that is dispatched to it.
class HomeSwipeUpInstructionsBloc
    extends Bloc<HomeSwipeUpInstructionsEvent, HomeSwipeUpInstructionsState> {
  HomeSwipeUpInstructionsBloc(HomeSwipeUpInstructionsState initialState)
      : super(initialState) {
    on<HomeSwipeUpInstructionsInitialEvent>(_onInitialize);
  }

  _onInitialize(
    HomeSwipeUpInstructionsInitialEvent event,
    Emitter<HomeSwipeUpInstructionsState> emit,
  ) async {}
}