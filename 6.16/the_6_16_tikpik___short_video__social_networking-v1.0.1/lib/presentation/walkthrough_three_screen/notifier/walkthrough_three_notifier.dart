import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:the_6_16_tikpik___short_video__social_networking/presentation/walkthrough_three_screen/models/walkthrough_three_model.dart';part 'walkthrough_three_state.dart';final walkthroughThreeNotifier = StateNotifierProvider<WalkthroughThreeNotifier, WalkthroughThreeState>((ref) => WalkthroughThreeNotifier(WalkthroughThreeState(walkthroughThreeModelObj: WalkthroughThreeModel())));
/// A notifier that manages the state of a WalkthroughThree according to the event that is dispatched to it.
class WalkthroughThreeNotifier extends StateNotifier<WalkthroughThreeState> {WalkthroughThreeNotifier(WalkthroughThreeState state) : super(state);

 }
