import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_6_06_helthio___telehealth/presentation/audio_call_screen/models/audio_call_model.dart';
part 'audio_call_state.dart';

final audioCallNotifier =
    StateNotifierProvider<AudioCallNotifier, AudioCallState>(
  (ref) => AudioCallNotifier(AudioCallState(
    audioCallModelObj: AudioCallModel(),
  )),
);

/// A notifier that manages the state of a AudioCall according to the event that is dispatched to it.
class AudioCallNotifier extends StateNotifier<AudioCallState> {
  AudioCallNotifier(AudioCallState state) : super(state) {}
}
