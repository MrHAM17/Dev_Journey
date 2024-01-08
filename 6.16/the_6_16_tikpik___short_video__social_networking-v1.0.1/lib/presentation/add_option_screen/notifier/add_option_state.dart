// ignore_for_file: must_be_immutable

part of 'add_option_notifier.dart';

/// Represents the state of AddOption in the application.
class AddOptionState extends Equatable {
  AddOptionState({
    this.stateInactiveController,
    this.stateInactiveController1,
    this.addOptionModelObj,
  });

  TextEditingController? stateInactiveController;

  TextEditingController? stateInactiveController1;

  AddOptionModel? addOptionModelObj;

  @override
  List<Object?> get props => [
        stateInactiveController,
        stateInactiveController1,
        addOptionModelObj,
      ];

  AddOptionState copyWith({
    TextEditingController? stateInactiveController,
    TextEditingController? stateInactiveController1,
    AddOptionModel? addOptionModelObj,
  }) {
    return AddOptionState(
      stateInactiveController:
          stateInactiveController ?? this.stateInactiveController,
      stateInactiveController1:
          stateInactiveController1 ?? this.stateInactiveController1,
      addOptionModelObj: addOptionModelObj ?? this.addOptionModelObj,
    );
  }
}
