import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_6_09_social_dashboards_ui_kit/presentation/video_chat_screen/models/video_chat_model.dart';
part 'video_chat_state.dart';

final videoChatNotifier =
    StateNotifierProvider<VideoChatNotifier, VideoChatState>(
  (ref) => VideoChatNotifier(VideoChatState(
    videoChatModelObj: VideoChatModel(),
  )),
);

/// A notifier that manages the state of a VideoChat according to the event that is dispatched to it.
class VideoChatNotifier extends StateNotifier<VideoChatState> {
  VideoChatNotifier(VideoChatState state) : super(state) {}
}
