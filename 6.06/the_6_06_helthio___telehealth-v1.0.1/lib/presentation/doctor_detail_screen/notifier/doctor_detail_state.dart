// ignore_for_file: must_be_immutable

part of 'doctor_detail_notifier.dart';

/// Represents the state of DoctorDetail in the application.
class DoctorDetailState extends Equatable {
  DoctorDetailState({
    this.rangeStart,
    this.rangeEnd,
    this.selectedDay,
    this.focusedDay,
    this.rangeSelectionMode = RangeSelectionMode.toggledOn,
    this.doctorDetailModelObj,
  });

  DoctorDetailModel? doctorDetailModelObj;

  DateTime? rangeStart;

  DateTime? rangeEnd;

  DateTime? selectedDay;

  DateTime? focusedDay;

  RangeSelectionMode rangeSelectionMode;

  @override
  List<Object?> get props => [
        rangeStart,
        rangeEnd,
        selectedDay,
        focusedDay,
        rangeSelectionMode,
        doctorDetailModelObj,
      ];

  DoctorDetailState copyWith({
    DateTime? rangeStart,
    DateTime? rangeEnd,
    DateTime? selectedDay,
    DateTime? focusedDay,
    RangeSelectionMode? rangeSelectionMode,
    DoctorDetailModel? doctorDetailModelObj,
  }) {
    return DoctorDetailState(
      rangeStart: rangeStart ?? this.rangeStart,
      rangeEnd: rangeEnd ?? this.rangeEnd,
      selectedDay: selectedDay ?? this.selectedDay,
      focusedDay: focusedDay ?? this.focusedDay,
      rangeSelectionMode: rangeSelectionMode ?? this.rangeSelectionMode,
      doctorDetailModelObj: doctorDetailModelObj ?? this.doctorDetailModelObj,
    );
  }
}
