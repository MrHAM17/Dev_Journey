import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_6_04_health_care/presentation/drug_details_screen/models/drug_details_model.dart';
part 'drug_details_state.dart';

final drugDetailsNotifier =
    StateNotifierProvider<DrugDetailsNotifier, DrugDetailsState>((ref) =>
        DrugDetailsNotifier(
            DrugDetailsState(drugDetailsModelObj: DrugDetailsModel())));

/// A notifier that manages the state of a DrugDetails according to the event that is dispatched to it.
class DrugDetailsNotifier extends StateNotifier<DrugDetailsState> {
  DrugDetailsNotifier(DrugDetailsState state) : super(state);
}
