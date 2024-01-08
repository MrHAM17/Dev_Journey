import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/speciallization_item_model.dart';
import 'package:the_3_11_hired___job_search/presentation/speciallization_screen/models/speciallization_model.dart';
part 'speciallization_event.dart';
part 'speciallization_state.dart';

/// A bloc that manages the state of a Speciallization according to the event that is dispatched to it.
class SpeciallizationBloc
    extends Bloc<SpeciallizationEvent, SpeciallizationState> {
  SpeciallizationBloc(SpeciallizationState initialState) : super(initialState) {
    on<SpeciallizationInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SpeciallizationInitialEvent event,
    Emitter<SpeciallizationState> emit,
  ) async {
    emit(state.copyWith(
        speciallizationModelObj: state.speciallizationModelObj?.copyWith(
            speciallizationItemList: fillSpeciallizationItemList())));
  }

  List<SpeciallizationItemModel> fillSpeciallizationItemList() {
    return [
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
    ];
  }
}
