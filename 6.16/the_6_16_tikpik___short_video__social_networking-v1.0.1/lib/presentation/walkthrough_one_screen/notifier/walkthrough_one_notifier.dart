import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:the_6_16_tikpik___short_video__social_networking/presentation/walkthrough_one_screen/models/walkthrough_one_model.dart';part 'walkthrough_one_state.dart';final walkthroughOneNotifier = StateNotifierProvider<WalkthroughOneNotifier, WalkthroughOneState>((ref) => WalkthroughOneNotifier(WalkthroughOneState(walkthroughOneModelObj: WalkthroughOneModel())));
/// A notifier that manages the state of a WalkthroughOne according to the event that is dispatched to it.
class WalkthroughOneNotifier extends StateNotifier<WalkthroughOneState> {WalkthroughOneNotifier(WalkthroughOneState state) : super(state);

 }
