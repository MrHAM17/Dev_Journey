import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:the_6_18_tune_cast___music_streaming__podcast_app/presentation/set_fingerprint_screen/models/set_fingerprint_model.dart';part 'set_fingerprint_state.dart';final setFingerprintNotifier = StateNotifierProvider<SetFingerprintNotifier, SetFingerprintState>((ref) => SetFingerprintNotifier(SetFingerprintState(setFingerprintModelObj: SetFingerprintModel())));
/// A notifier that manages the state of a SetFingerprint according to the event that is dispatched to it.
class SetFingerprintNotifier extends StateNotifier<SetFingerprintState> {SetFingerprintNotifier(SetFingerprintState state) : super(state);

 }
