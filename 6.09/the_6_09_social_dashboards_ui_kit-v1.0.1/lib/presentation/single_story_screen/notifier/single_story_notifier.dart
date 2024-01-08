import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_6_09_social_dashboards_ui_kit/presentation/single_story_screen/models/single_story_model.dart';
part 'single_story_state.dart';

final singleStoryNotifier =
    StateNotifierProvider<SingleStoryNotifier, SingleStoryState>(
  (ref) => SingleStoryNotifier(SingleStoryState(
    commentController: TextEditingController(),
    singleStoryModelObj: SingleStoryModel(),
  )),
);

/// A notifier that manages the state of a SingleStory according to the event that is dispatched to it.
class SingleStoryNotifier extends StateNotifier<SingleStoryState> {
  SingleStoryNotifier(SingleStoryState state) : super(state) {}
}
