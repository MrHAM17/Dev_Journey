// ignore_for_file: must_be_immutable

part of 'when_is_your_birthday_notifier.dart';

/// Represents the state of WhenIsYourBirthday in the application.
class WhenIsYourBirthdayState extends Equatable {
  WhenIsYourBirthdayState({
    this.dateController,
    this.rangeStart,
    this.rangeEnd,
    this.selectedDay,
    this.focusedDay,
    this.rangeSelectionMode = RangeSelectionMode.toggledOn,
    this.whenIsYourBirthdayModelObj,
  });

  TextEditingController? dateController;

  WhenIsYourBirthdayModel? whenIsYourBirthdayModelObj;

  DateTime? rangeStart;

  DateTime? rangeEnd;

  DateTime? selectedDay;

  DateTime? focusedDay;

  RangeSelectionMode rangeSelectionMode;

  @override
  List<Object?> get props => [
        dateController,
        rangeStart,
        rangeEnd,
        selectedDay,
        focusedDay,
        rangeSelectionMode,
        whenIsYourBirthdayModelObj,
      ];

  WhenIsYourBirthdayState copyWith({
    TextEditingController? dateController,
    DateTime? rangeStart,
    DateTime? rangeEnd,
    DateTime? selectedDay,
    DateTime? focusedDay,
    RangeSelectionMode? rangeSelectionMode,
    WhenIsYourBirthdayModel? whenIsYourBirthdayModelObj,
  }) {
    return WhenIsYourBirthdayState(
      dateController: dateController ?? this.dateController,
      rangeStart: rangeStart ?? this.rangeStart,
      rangeEnd: rangeEnd ?? this.rangeEnd,
      selectedDay: selectedDay ?? this.selectedDay,
      focusedDay: focusedDay ?? this.focusedDay,
      rangeSelectionMode: rangeSelectionMode ?? this.rangeSelectionMode,
      whenIsYourBirthdayModelObj:
          whenIsYourBirthdayModelObj ?? this.whenIsYourBirthdayModelObj,
    );
  }
}
