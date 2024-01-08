import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:the_6_16_tikpik___short_video__social_networking/presentation/set_your_fingerprint_screen/models/set_your_fingerprint_model.dart';part 'set_your_fingerprint_state.dart';final setYourFingerprintNotifier = StateNotifierProvider<SetYourFingerprintNotifier, SetYourFingerprintState>((ref) => SetYourFingerprintNotifier(SetYourFingerprintState(setYourFingerprintModelObj: SetYourFingerprintModel())));
/// A notifier that manages the state of a SetYourFingerprint according to the event that is dispatched to it.
class SetYourFingerprintNotifier extends StateNotifier<SetYourFingerprintState> {SetYourFingerprintNotifier(SetYourFingerprintState state) : super(state);

 }
