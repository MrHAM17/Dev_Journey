import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_6_13_fashionista___e_commerce_app/presentation/onbording_three_screen/models/onbording_three_model.dart';
part 'onbording_three_state.dart';

final onbordingThreeNotifier = StateNotifierProvider<OnbordingThreeNotifier,
        OnbordingThreeState>(
    (ref) => OnbordingThreeNotifier(
        OnbordingThreeState(onbordingThreeModelObj: OnbordingThreeModel())));

/// A notifier that manages the state of a OnbordingThree according to the event that is dispatched to it.
class OnbordingThreeNotifier extends StateNotifier<OnbordingThreeState> {
  OnbordingThreeNotifier(OnbordingThreeState state) : super(state);
}
