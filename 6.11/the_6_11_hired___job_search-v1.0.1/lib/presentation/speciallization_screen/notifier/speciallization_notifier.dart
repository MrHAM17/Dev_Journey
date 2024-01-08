import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/speciallization_item_model.dart';
import 'package:the_6_11_hired___job_search/presentation/speciallization_screen/models/speciallization_model.dart';
part 'speciallization_state.dart';

final speciallizationNotifier = StateNotifierProvider<SpeciallizationNotifier,
    SpeciallizationState>((ref) => SpeciallizationNotifier(SpeciallizationState(
        speciallizationModelObj: SpeciallizationModel(speciallizationItemList: [
      SpeciallizationItemModel(
          designCreative: ImageConstant.imgCheckmark,
          designCreative1: "Design & Creative"),
      SpeciallizationItemModel(
          designCreative: ImageConstant.imgPlay,
          designCreative1: "Development & IT"),
      SpeciallizationItemModel(
          designCreative: ImageConstant.imgPlay,
          designCreative1: "Engineering & Architecture"),
      SpeciallizationItemModel(
          designCreative: ImageConstant.imgPlay,
          designCreative1: "Sales & Marketing"),
      SpeciallizationItemModel(
          designCreative: ImageConstant.imgPlay, designCreative1: "Writing"),
      SpeciallizationItemModel(
          designCreative: ImageConstant.imgPlay, designCreative1: "Finance")
    ]))));

/// A notifier that manages the state of a Speciallization according to the event that is dispatched to it.
class SpeciallizationNotifier extends StateNotifier<SpeciallizationState> {
  SpeciallizationNotifier(SpeciallizationState state) : super(state);
}
