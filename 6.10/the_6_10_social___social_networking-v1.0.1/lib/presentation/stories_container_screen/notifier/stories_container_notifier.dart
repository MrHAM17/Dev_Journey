import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_6_10_social___social_networking/presentation/stories_container_screen/models/stories_container_model.dart';
part 'stories_container_state.dart';

final storiesContainerNotifier =
    StateNotifierProvider<StoriesContainerNotifier, StoriesContainerState>(
        (ref) => StoriesContainerNotifier(StoriesContainerState(
            storiesContainerModelObj: StoriesContainerModel())));

/// A notifier that manages the state of a StoriesContainer according to the event that is dispatched to it.
class StoriesContainerNotifier extends StateNotifier<StoriesContainerState> {
  StoriesContainerNotifier(StoriesContainerState state) : super(state);
}
