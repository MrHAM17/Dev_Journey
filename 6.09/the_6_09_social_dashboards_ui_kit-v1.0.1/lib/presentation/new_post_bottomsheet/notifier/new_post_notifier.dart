import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_6_09_social_dashboards_ui_kit/presentation/new_post_bottomsheet/models/new_post_model.dart';
part 'new_post_state.dart';

final newPostNotifier = StateNotifierProvider<NewPostNotifier, NewPostState>(
    (ref) => NewPostNotifier(NewPostState(newPostModelObj: NewPostModel())));

/// A notifier that manages the state of a NewPost according to the event that is dispatched to it.
class NewPostNotifier extends StateNotifier<NewPostState> {
  NewPostNotifier(NewPostState state) : super(state);
}
