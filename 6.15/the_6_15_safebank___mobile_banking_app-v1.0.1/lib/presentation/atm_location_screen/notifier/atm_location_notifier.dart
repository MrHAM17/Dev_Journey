import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_6_15_safebank___mobile_banking_app/presentation/atm_location_screen/models/atm_location_model.dart';
part 'atm_location_state.dart';

final atmLocationNotifier =
    StateNotifierProvider<AtmLocationNotifier, AtmLocationState>((ref) =>
        AtmLocationNotifier(
            AtmLocationState(atmLocationModelObj: AtmLocationModel())));

/// A notifier that manages the state of a AtmLocation according to the event that is dispatched to it.
class AtmLocationNotifier extends StateNotifier<AtmLocationState> {
  AtmLocationNotifier(AtmLocationState state) : super(state);
}
