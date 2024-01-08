// ignore_for_file: must_be_immutable

part of 'add_new_property_meet_with_a_agent_notifier.dart';

/// Represents the state of AddNewPropertyMeetWithAAgent in the application.
class AddNewPropertyMeetWithAAgentState extends Equatable {
  AddNewPropertyMeetWithAAgentState({
    this.rangeStart,
    this.rangeEnd,
    this.selectedDay,
    this.focusedDay,
    this.rangeSelectionMode = RangeSelectionMode.toggledOn,
    this.addNewPropertyMeetWithAAgentModelObj,
  });

  AddNewPropertyMeetWithAAgentModel? addNewPropertyMeetWithAAgentModelObj;

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
        addNewPropertyMeetWithAAgentModelObj,
      ];

  AddNewPropertyMeetWithAAgentState copyWith({
    DateTime? rangeStart,
    DateTime? rangeEnd,
    DateTime? selectedDay,
    DateTime? focusedDay,
    RangeSelectionMode? rangeSelectionMode,
    AddNewPropertyMeetWithAAgentModel? addNewPropertyMeetWithAAgentModelObj,
  }) {
    return AddNewPropertyMeetWithAAgentState(
      rangeStart: rangeStart ?? this.rangeStart,
      rangeEnd: rangeEnd ?? this.rangeEnd,
      selectedDay: selectedDay ?? this.selectedDay,
      focusedDay: focusedDay ?? this.focusedDay,
      rangeSelectionMode: rangeSelectionMode ?? this.rangeSelectionMode,
      addNewPropertyMeetWithAAgentModelObj:
          addNewPropertyMeetWithAAgentModelObj ??
              this.addNewPropertyMeetWithAAgentModelObj,
    );
  }
}
