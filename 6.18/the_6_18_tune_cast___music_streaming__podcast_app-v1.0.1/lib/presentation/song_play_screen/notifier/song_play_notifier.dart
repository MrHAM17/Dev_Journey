import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:the_6_18_tune_cast___music_streaming__podcast_app/presentation/song_play_screen/models/song_play_model.dart';part 'song_play_state.dart';final songPlayNotifier = StateNotifierProvider<SongPlayNotifier, SongPlayState>((ref) => SongPlayNotifier(SongPlayState(songPlayModelObj: SongPlayModel())));
/// A notifier that manages the state of a SongPlay according to the event that is dispatched to it.
class SongPlayNotifier extends StateNotifier<SongPlayState> {SongPlayNotifier(SongPlayState state) : super(state);

 }
