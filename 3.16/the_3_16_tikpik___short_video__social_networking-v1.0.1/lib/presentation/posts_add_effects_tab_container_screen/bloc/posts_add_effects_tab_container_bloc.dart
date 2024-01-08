import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_3_16_tikpik___short_video__social_networking/presentation/posts_add_effects_tab_container_screen/models/posts_add_effects_tab_container_model.dart';
part 'posts_add_effects_tab_container_event.dart';
part 'posts_add_effects_tab_container_state.dart';

/// A bloc that manages the state of a PostsAddEffectsTabContainer according to the event that is dispatched to it.
class PostsAddEffectsTabContainerBloc extends Bloc<
    PostsAddEffectsTabContainerEvent, PostsAddEffectsTabContainerState> {
  PostsAddEffectsTabContainerBloc(PostsAddEffectsTabContainerState initialState)
      : super(initialState) {
    on<PostsAddEffectsTabContainerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    PostsAddEffectsTabContainerInitialEvent event,
    Emitter<PostsAddEffectsTabContainerState> emit,
  ) async {}
}
