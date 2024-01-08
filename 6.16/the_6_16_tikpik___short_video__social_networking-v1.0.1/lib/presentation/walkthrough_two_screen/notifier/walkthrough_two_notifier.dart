import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:the_6_16_tikpik___short_video__social_networking/presentation/walkthrough_two_screen/models/walkthrough_two_model.dart';part 'walkthrough_two_state.dart';final walkthroughTwoNotifier = StateNotifierProvider<WalkthroughTwoNotifier, WalkthroughTwoState>((ref) => WalkthroughTwoNotifier(WalkthroughTwoState(walkthroughTwoModelObj: WalkthroughTwoModel())));
/// A notifier that manages the state of a WalkthroughTwo according to the event that is dispatched to it.
class WalkthroughTwoNotifier extends StateNotifier<WalkthroughTwoState> {WalkthroughTwoNotifier(WalkthroughTwoState state) : super(state);

 }
