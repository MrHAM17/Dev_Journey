import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:the_6_18_tune_cast___music_streaming__podcast_app/presentation/audio_video_screen/models/audio_video_model.dart';part 'audio_video_state.dart';final audioVideoNotifier = StateNotifierProvider<AudioVideoNotifier, AudioVideoState>((ref) => AudioVideoNotifier(AudioVideoState(isSelectedSwitch: false, isSelectedSwitch1: false, audioVideoModelObj: AudioVideoModel())));
/// A notifier that manages the state of a AudioVideo according to the event that is dispatched to it.
class AudioVideoNotifier extends StateNotifier<AudioVideoState> {AudioVideoNotifier(AudioVideoState state) : super(state);

void changeSwitchBox1(bool value) { state = state.copyWith(isSelectedSwitch: value); } 
void changeSwitchBox2(bool value) { state = state.copyWith(isSelectedSwitch1: value); } 
 }
