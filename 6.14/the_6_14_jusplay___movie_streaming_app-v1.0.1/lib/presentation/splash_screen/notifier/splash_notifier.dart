import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_6_14_jusplay___movie_streaming_app/presentation/splash_screen/models/splash_model.dart';
part 'splash_state.dart';

final splashNotifier = StateNotifierProvider<SplashNotifier, SplashState>(
    (ref) => SplashNotifier(SplashState(splashModelObj: SplashModel())));

/// A notifier that manages the state of a Splash according to the event that is dispatched to it.
class SplashNotifier extends StateNotifier<SplashState> {
  SplashNotifier(SplashState state) : super(state);
}
