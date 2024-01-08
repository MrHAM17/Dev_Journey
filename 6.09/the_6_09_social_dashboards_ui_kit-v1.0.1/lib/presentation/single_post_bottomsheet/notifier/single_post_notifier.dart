import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_6_09_social_dashboards_ui_kit/presentation/single_post_bottomsheet/models/single_post_model.dart';
part 'single_post_state.dart';

final singlePostNotifier =
    StateNotifierProvider<SinglePostNotifier, SinglePostState>(
  (ref) => SinglePostNotifier(SinglePostState(
    singlePostModelObj: SinglePostModel(),
  )),
);

/// A notifier that manages the state of a SinglePost according to the event that is dispatched to it.
class SinglePostNotifier extends StateNotifier<SinglePostState> {
  SinglePostNotifier(SinglePostState state) : super(state) {}
}
