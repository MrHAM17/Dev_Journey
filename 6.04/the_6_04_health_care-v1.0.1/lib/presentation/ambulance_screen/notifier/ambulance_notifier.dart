import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_6_04_health_care/presentation/ambulance_screen/models/ambulance_model.dart';
part 'ambulance_state.dart';

final ambulanceNotifier =
    StateNotifierProvider<AmbulanceNotifier, AmbulanceState>((ref) =>
        AmbulanceNotifier(AmbulanceState(ambulanceModelObj: AmbulanceModel())));

/// A notifier that manages the state of a Ambulance according to the event that is dispatched to it.
class AmbulanceNotifier extends StateNotifier<AmbulanceState> {
  AmbulanceNotifier(AmbulanceState state) : super(state);
}
