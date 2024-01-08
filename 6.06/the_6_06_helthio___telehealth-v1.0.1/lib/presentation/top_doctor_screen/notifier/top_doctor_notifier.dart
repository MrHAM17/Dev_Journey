import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/topdoctor_item_model.dart';
import 'package:the_6_06_helthio___telehealth/presentation/top_doctor_screen/models/top_doctor_model.dart';
part 'top_doctor_state.dart';

final topDoctorNotifier =
    StateNotifierProvider<TopDoctorNotifier, TopDoctorState>(
        (ref) => TopDoctorNotifier(TopDoctorState(
                topDoctorModelObj: TopDoctorModel(topdoctorItemList: [
              TopdoctorItemModel(
                  drMarcusHorizon: "Dr. Marcus Horizon D",
                  chardiologist: "Chardiologist",
                  fortySeven: "4.7",
                  distance: "800m away"),
              TopdoctorItemModel(
                  drMarcusHorizon: "Dr. Marcus Horizon D",
                  chardiologist: "Chardiologist",
                  fortySeven: "4.7",
                  distance: "800m away"),
              TopdoctorItemModel(
                  drMarcusHorizon: "Dr. Marcus Horizon D",
                  chardiologist: "Chardiologist",
                  fortySeven: "4.7",
                  distance: "800m away"),
              TopdoctorItemModel(
                  drMarcusHorizon: "Dr. Marcus Horizon D",
                  chardiologist: "Chardiologist",
                  fortySeven: "4.7",
                  distance: "800m away"),
              TopdoctorItemModel(
                  drMarcusHorizon: "Dr. Marcus Horizon D",
                  chardiologist: "Chardiologist",
                  fortySeven: "4.7",
                  distance: "800m away")
            ]))));

/// A notifier that manages the state of a TopDoctor according to the event that is dispatched to it.
class TopDoctorNotifier extends StateNotifier<TopDoctorState> {
  TopDoctorNotifier(TopDoctorState state) : super(state);
}
