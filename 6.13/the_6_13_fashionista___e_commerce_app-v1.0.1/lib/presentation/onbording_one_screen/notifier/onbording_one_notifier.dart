import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_6_13_fashionista___e_commerce_app/presentation/onbording_one_screen/models/onbording_one_model.dart';
part 'onbording_one_state.dart';

final onbordingOneNotifier =
    StateNotifierProvider<OnbordingOneNotifier, OnbordingOneState>((ref) =>
        OnbordingOneNotifier(
            OnbordingOneState(onbordingOneModelObj: OnbordingOneModel())));

/// A notifier that manages the state of a OnbordingOne according to the event that is dispatched to it.
class OnbordingOneNotifier extends StateNotifier<OnbordingOneState> {
  OnbordingOneNotifier(OnbordingOneState state) : super(state);
}
