import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_3_09_social_dashboards_ui_kit/presentation/video_chat_screen/models/video_chat_model.dart';
part 'video_chat_event.dart';
part 'video_chat_state.dart';

/// A bloc that manages the state of a VideoChat according to the event that is dispatched to it.
class VideoChatBloc extends Bloc<VideoChatEvent, VideoChatState> {
  VideoChatBloc(VideoChatState initialState) : super(initialState) {
    on<VideoChatInitialEvent>(_onInitialize);
  }

  _onInitialize(
    VideoChatInitialEvent event,
    Emitter<VideoChatState> emit,
  ) async {}
}
