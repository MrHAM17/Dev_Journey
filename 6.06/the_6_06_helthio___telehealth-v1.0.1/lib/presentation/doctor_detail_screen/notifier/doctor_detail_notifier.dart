import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:table_calendar/table_calendar.dart';
import '../models/am_item_model.dart';
import 'package:the_6_06_helthio___telehealth/presentation/doctor_detail_screen/models/doctor_detail_model.dart';
part 'doctor_detail_state.dart';

final doctorDetailNotifier =
    StateNotifierProvider<DoctorDetailNotifier, DoctorDetailState>((ref) =>
        DoctorDetailNotifier(DoctorDetailState(
            rangeStart: DateTime.now(),
            rangeEnd: DateTime.now(),
            selectedDay: DateTime.now(),
            focusedDay: DateTime.now(),
            rangeSelectionMode: RangeSelectionMode.toggledOn,
            doctorDetailModelObj: DoctorDetailModel(
                amItemList: List.generate(9, (index) => AmItemModel())))));

/// A notifier that manages the state of a DoctorDetail according to the event that is dispatched to it.
class DoctorDetailNotifier extends StateNotifier<DoctorDetailState> {
  DoctorDetailNotifier(DoctorDetailState state) : super(state);

  void onSelectedChipView1(
    int index,
    bool value,
  ) {
    List<AmItemModel> newList =
        List<AmItemModel>.from(state.doctorDetailModelObj!.amItemList);
    newList[index] = newList[index].copyWith(isSelected: value);
    state = state.copyWith(
        doctorDetailModelObj:
            state.doctorDetailModelObj?.copyWith(amItemList: newList));
  }
}
