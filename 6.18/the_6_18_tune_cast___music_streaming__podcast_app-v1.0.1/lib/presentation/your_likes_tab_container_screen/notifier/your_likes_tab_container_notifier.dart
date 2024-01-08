import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_6_18_tune_cast___music_streaming__podcast_app/presentation/your_likes_tab_container_screen/models/your_likes_tab_container_model.dart';
part 'your_likes_tab_container_state.dart';

final yourLikesTabContainerNotifier = StateNotifierProvider<
    YourLikesTabContainerNotifier, YourLikesTabContainerState>(
  (ref) => YourLikesTabContainerNotifier(YourLikesTabContainerState(
    yourLikesTabContainerModelObj: YourLikesTabContainerModel(),
  )),
);

/// A notifier that manages the state of a YourLikesTabContainer according to the event that is dispatched to it.
class YourLikesTabContainerNotifier
    extends StateNotifier<YourLikesTabContainerState> {
  YourLikesTabContainerNotifier(YourLikesTabContainerState state)
      : super(state) {}
}
