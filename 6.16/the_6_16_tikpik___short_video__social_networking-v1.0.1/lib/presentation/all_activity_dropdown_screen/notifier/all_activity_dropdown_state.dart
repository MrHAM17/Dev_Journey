// ignore_for_file: must_be_immutable

part of 'all_activity_dropdown_notifier.dart';

/// Represents the state of AllActivityDropdown in the application.
class AllActivityDropdownState extends Equatable {
  AllActivityDropdownState({
    this.selectedDropDownValue,
    this.allActivityDropdownModelObj,
  });

  SelectionPopupModel? selectedDropDownValue;

  AllActivityDropdownModel? allActivityDropdownModelObj;

  @override
  List<Object?> get props => [
        selectedDropDownValue,
        allActivityDropdownModelObj,
      ];

  AllActivityDropdownState copyWith({
    SelectionPopupModel? selectedDropDownValue,
    AllActivityDropdownModel? allActivityDropdownModelObj,
  }) {
    return AllActivityDropdownState(
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      allActivityDropdownModelObj:
          allActivityDropdownModelObj ?? this.allActivityDropdownModelObj,
    );
  }
}
