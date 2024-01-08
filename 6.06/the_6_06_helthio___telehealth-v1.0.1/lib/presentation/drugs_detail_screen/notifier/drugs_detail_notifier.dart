import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_6_06_helthio___telehealth/presentation/drugs_detail_screen/models/drugs_detail_model.dart';
part 'drugs_detail_state.dart';

final drugsDetailNotifier =
    StateNotifierProvider<DrugsDetailNotifier, DrugsDetailState>((ref) =>
        DrugsDetailNotifier(
            DrugsDetailState(drugsDetailModelObj: DrugsDetailModel())));

/// A notifier that manages the state of a DrugsDetail according to the event that is dispatched to it.
class DrugsDetailNotifier extends StateNotifier<DrugsDetailState> {
  DrugsDetailNotifier(DrugsDetailState state) : super(state);
}
