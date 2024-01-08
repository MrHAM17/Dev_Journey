import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:the_6_18_tune_cast___music_streaming__podcast_app/presentation/walkthrough_screen/models/walkthrough_model.dart';part 'walkthrough_state.dart';final walkthroughNotifier = StateNotifierProvider<WalkthroughNotifier, WalkthroughState>((ref) => WalkthroughNotifier(WalkthroughState(walkthroughModelObj: WalkthroughModel())));
/// A notifier that manages the state of a Walkthrough according to the event that is dispatched to it.
class WalkthroughNotifier extends StateNotifier<WalkthroughState> {WalkthroughNotifier(WalkthroughState state) : super(state);

 }
