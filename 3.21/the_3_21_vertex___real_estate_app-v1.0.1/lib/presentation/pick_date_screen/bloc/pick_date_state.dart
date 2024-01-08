// ignore_for_file: must_be_immutable

part of 'pick_date_bloc.dart';

/// Represents the state of PickDate in the application.
class PickDateState extends Equatable {
  PickDateState({
    this.rangeStart,
    this.rangeEnd,
    this.selectedDay,
    this.focusedDay,
    this.rangeSelectionMode = RangeSelectionMode.toggledOn,
    this.pickDateModelObj,
  });

  PickDateModel? pickDateModelObj;

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
        pickDateModelObj,
      ];
  PickDateState copyWith({
    DateTime? rangeStart,
    DateTime? rangeEnd,
    DateTime? selectedDay,
    DateTime? focusedDay,
    RangeSelectionMode? rangeSelectionMode,
    PickDateModel? pickDateModelObj,
  }) {
    return PickDateState(
      rangeStart: rangeStart ?? this.rangeStart,
      rangeEnd: rangeEnd ?? this.rangeEnd,
      selectedDay: selectedDay ?? this.selectedDay,
      focusedDay: focusedDay ?? this.focusedDay,
      rangeSelectionMode: rangeSelectionMode ?? this.rangeSelectionMode,
      pickDateModelObj: pickDateModelObj ?? this.pickDateModelObj,
    );
  }
}
