import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:the_6_18_tune_cast___music_streaming__podcast_app/presentation/lets_you_in_screen/models/lets_you_in_model.dart';part 'lets_you_in_state.dart';final letsYouInNotifier = StateNotifierProvider<LetsYouInNotifier, LetsYouInState>((ref) => LetsYouInNotifier(LetsYouInState(letsYouInModelObj: LetsYouInModel())));
/// A notifier that manages the state of a LetsYouIn according to the event that is dispatched to it.
class LetsYouInNotifier extends StateNotifier<LetsYouInState> {LetsYouInNotifier(LetsYouInState state) : super(state);

 }
