import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:table_calendar/table_calendar.dart';
import '../models/am_item_model.dart';
import 'package:the_3_06_helthio___telehealth/presentation/doctor_detail_screen/models/doctor_detail_model.dart';
part 'doctor_detail_event.dart';
part 'doctor_detail_state.dart';

/// A bloc that manages the state of a DoctorDetail according to the event that is dispatched to it.
class DoctorDetailBloc extends Bloc<DoctorDetailEvent, DoctorDetailState> {
  DoctorDetailBloc(DoctorDetailState initialState) : super(initialState) {
    on<DoctorDetailInitialEvent>(_onInitialize);
    on<UpdateChipViewEvent>(_updateChipView);
  }

  _updateChipView(
    UpdateChipViewEvent event,
    Emitter<DoctorDetailState> emit,
  ) {
    List<AmItemModel> newList =
        List<AmItemModel>.from(state.doctorDetailModelObj!.amItemList);
    newList[event.index] =
        newList[event.index].copyWith(isSelected: event.isSelected);
    emit(state.copyWith(
        doctorDetailModelObj:
            state.doctorDetailModelObj?.copyWith(amItemList: newList)));
  }

  List<AmItemModel> fillAmItemList() {
    return List.generate(9, (index) => AmItemModel());
  }

  _onInitialize(
    DoctorDetailInitialEvent event,
    Emitter<DoctorDetailState> emit,
  ) async {
    emit(state.copyWith(rangeSelectionMode: RangeSelectionMode.toggledOn));
    emit(state.copyWith(
        doctorDetailModelObj: state.doctorDetailModelObj
            ?.copyWith(amItemList: fillAmItemList())));
    NavigatorService.pushNamed(
      AppRoutes.bookingDoctorScreen,
    );
    NavigatorService.pushNamed(
      AppRoutes.homeContainerScreen,
    );
  }
}
