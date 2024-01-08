import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:the_6_18_tune_cast___music_streaming__podcast_app/presentation/lyrics_screen/models/lyrics_model.dart';part 'lyrics_state.dart';final lyricsNotifier = StateNotifierProvider<LyricsNotifier, LyricsState>((ref) => LyricsNotifier(LyricsState(lyricsModelObj: LyricsModel())));
/// A notifier that manages the state of a Lyrics according to the event that is dispatched to it.
class LyricsNotifier extends StateNotifier<LyricsState> {LyricsNotifier(LyricsState state) : super(state);

 }
