import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_6_06_helthio___telehealth/presentation/video_call_screen/models/video_call_model.dart';
part 'video_call_state.dart';

final videoCallNotifier =
    StateNotifierProvider<VideoCallNotifier, VideoCallState>(
  (ref) => VideoCallNotifier(VideoCallState(
    videoCallModelObj: VideoCallModel(),
  )),
);

/// A notifier that manages the state of a VideoCall according to the event that is dispatched to it.
class VideoCallNotifier extends StateNotifier<VideoCallState> {
  VideoCallNotifier(VideoCallState state) : super(state) {}
}
