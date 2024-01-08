import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_6_13_fashionista___e_commerce_app/presentation/onbording_two_screen/models/onbording_two_model.dart';
part 'onbording_two_state.dart';

final onbordingTwoNotifier =
    StateNotifierProvider<OnbordingTwoNotifier, OnbordingTwoState>((ref) =>
        OnbordingTwoNotifier(
            OnbordingTwoState(onbordingTwoModelObj: OnbordingTwoModel())));

/// A notifier that manages the state of a OnbordingTwo according to the event that is dispatched to it.
class OnbordingTwoNotifier extends StateNotifier<OnbordingTwoState> {
  OnbordingTwoNotifier(OnbordingTwoState state) : super(state);
}
